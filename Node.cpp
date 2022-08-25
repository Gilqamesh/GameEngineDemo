#include "NodeAllocator.hpp"
#include "Node.hpp"
#include <bitset>
#include <fstream>
#include "Tree.hpp"

u32 maxInsertionDepth = 0;
AABB maxInsertionBound;
clock_t timer = 0;
clock_t timer2 = 0;
clock_t timer3 = 0;

extern ofstream insertionFile;
extern ofstream afterEraseFile;
extern ofstream afterReinsert;

vector<RecInfo> LeafHash::getRecInfos(Tree *tree)
{
    vector<RecInfo> result;

    for (u32 i = 0;
            i < NODE_LIMIT;
            ++i)
    {
        if (_recIndices[i] != EMPTY_HASH_SLOT)
        {
            result.push_back({ _recIndices[i], tree->rectangles[_recIndices[i]] });
        }
    }

    return (result);
}

void Node::insert(u32 recIndex, Rec rec, NodeOrientation orientation, u32 curDepth, AABB curBound, Tree *tree)
{
    if (curDepth > maxInsertionDepth)
    {
        maxInsertionDepth = curDepth;
        maxInsertionBound = curBound;
    }
    ASSERT(!(curBound.w < 1 || curBound.h < 1));
    if (isLeaf() == true)
    {
        if (_curNumberOfRectangles < NODE_LIMIT) // if not full yet
        {
            if (hasLeafHash() == false) // get a LeafHash to store the recs
            {
                ASSERT(_curNumberOfRectangles == 0);
                _firstChild = tree->leafHashAllocator.allocateLeafHash();
            }
            tree->leafHashAllocator.insert(recIndex, _firstChild);
            ++_curNumberOfRectangles;
            return ;
        }
        subdivide(orientation, curDepth, curBound, tree); // if full -> subdivide
        --tree->nodeAllocator._numberOfLeafs;
    }

    // clock_t start = clock();
    array<AABB, 2> childBounds = getChildBounds(orientation, curBound);
    // timer += clock() - start;

    // insert the rec to the children
    ASSERT(hasChildren() == true);
    NodeInfo nodeInfo = tree->nodeAllocator.getChildren(_firstChild);
    for (u32 childIndex = 0;
        childIndex < NUMBER_OF_CHILDREN;
        ++childIndex)
    {
        if (rec.doesAABBIntersect(childBounds[childIndex]) == true)
        {
            Node *childNode = nodeInfo.address[childIndex];
            childNode->insert(recIndex, rec, orientation == horizontal ? vertical : horizontal, curDepth + 1,
                childBounds[childIndex], tree);
        }
    }
}

// TODO(david): better structure for this
queue<NodeLeaf> Node::getLeafs(NodeOrientation orientation, AABB curBound, u32 curDepth, Tree *tree)
{
    queue<NodeLeaf> leafs;
    queue<NodeLeaf> toProcess;
    toProcess.push({ orientation, curBound, curDepth, this });

    while (toProcess.empty() == false)
    {
        NodeLeaf curNode = toProcess.front();
        toProcess.pop();
        if (curNode.node->isLeaf() == true)
        {
            leafs.push(curNode);
        }
        else
        {
            Node *node = curNode.node;
            if (node->hasChildren() == true)
            {
                array<AABB, 2> childBounds = getChildBounds(curNode.orientation, curNode.bound);

                for (u32 childIndex = 0;
                    childIndex < NUMBER_OF_CHILDREN;
                    ++childIndex)
                {
                    // TODO(david): get NodeInfo once and iterate over the addresses
                    Node *child = tree->nodeAllocator.getNode(node->_firstChild + childIndex);
                    toProcess.push({ (curNode.orientation == horizontal ? vertical : horizontal), childBounds[childIndex], curNode.depth + 1, child });
                }
            }
        }
    }

    return (leafs);
}

u32 Node::update(AABB bound, Tree *tree)
{
    u32 nOfIntersections = 0;

    bitset<NUMBER_OF_INSERTIONS> collidedRectangles;

    // new update strategy
    // iterate over the rectangles
    //  - remove rec
    //  - move rec
    //  - reinsert rec

    queue<NodeLeaf> leafs = getLeafs(horizontal, bound, 0, tree);
    // change rec velocities
    while (leafs.empty() == false)
    {
        NodeLeaf leaf = leafs.front();
        leafs.pop();
        Node *node = leaf.node;
        if (node->isLeaf() == true)
        {
            // map recs out to cache
            // TODO(david): use own structure
            // clock_t start = clock();
            vector<RecInfo> recInfo = tree->leafHashAllocator.getRecInfos(node->_firstChild, tree);
            // timer += clock() - start;

            for (u32 leftIter = 0;
                leftIter < recInfo.size();
                ++leftIter)
            {
                u32 leftRecIndex = recInfo[leftIter].index;
                if (collidedRectangles[leftRecIndex] == false)
                {
                    for (u32 rightIter = leftIter + 1;
                        rightIter < recInfo.size();
                        ++rightIter)
                    {
                        u32 rightRecIndex = recInfo[rightIter].index;
                        ASSERT(leftRecIndex != rightRecIndex);

                        if (collidedRectangles[rightRecIndex] == false)
                        {
                            Rec leftRec = recInfo[leftIter].rec;
                            Rec rightRec = recInfo[rightIter].rec;
                            if (leftRec.doesRecIntersect(rightRec) == true)
                            {
                                // remove the 2 recs for further collision detection with other recs
                                collidedRectangles[leftRecIndex] = true;
                                collidedRectangles[rightRecIndex] = true;

                                // change velocities of recs
                                if (leftRec.isXOutsideNextFrame(bound) == true)
                                {
                                    leftRec.dx *= -1.0f;
                                }
                                if (leftRec.isYOutsideNextFrame(bound) == true)
                                {
                                    leftRec.dy *= -1.0f;
                                }
                                if (rightRec.isXOutsideNextFrame(bound) == true)
                                {
                                    rightRec.dx *= -1.0f;
                                }
                                if (rightRec.isYOutsideNextFrame(bound) == true)
                                {
                                    rightRec.dy *= -1.0f;
                                }

                                ++nOfIntersections;

                                // break out from the second iteration, since the first rectangle collision is already resolved
                                break ;
                            }
                        }
                    }
                }
            }

            // start = clock();
            // map the velocities back from cache to storage
            for (u32 i = 0;
                    i < recInfo.size();
                    ++i)
            {
                tree->rectangles[recInfo[i].index] = recInfo[i].rec;
            }
            // timer2 += clock() - start;

            tree->leafHashAllocator.clearLeafHash(node->_firstChild);
            node->_curNumberOfRectangles = 0;
        }
    }

    // clock_t start = clock();
    // TODO(david): profile this loop, and update multiple rectangles at a time by using simd intrinsics
    const u32 nOfConcurrentInserts = 512;
    for (u32 recIndex = 0;
         recIndex < tree->rectangles.size();
         recIndex += nOfConcurrentInserts)
    {
        array<Rec, nOfConcurrentInserts> recs;
        u32 recsSize = 0;
        // clock_t start = clock();
        for (u32 i = 0;
             i < nOfConcurrentInserts && i + recIndex < tree->rectangles.size();
             ++i)
        {
            u32 curRecIndex = i + recIndex;
            Rec &rec = tree->rectangles[curRecIndex];

            if (collidedRectangles[curRecIndex] == false) // didnt collide -> bound check it as it wasnt bound checked
            {
                if (rec.isXOutsideNextFrame(bound) == true)
                {
                    rec.dx *= -1.0f;
                }
                if (rec.isYOutsideNextFrame(bound) == true)
                {
                    rec.dy *= -1.0f;
                }
            }
            rec.update();
            recs[recsSize++] = rec;
        }
        // timer3 += clock() - start;

        for (u32 i = 0;
             i < nOfConcurrentInserts && i + recIndex < tree->rectangles.size();
             ++i)
        {
            insert(recIndex + i, recs[i], horizontal, 0, bound, tree);
        }

        // clock_t start = clock();
        // Rec &rec = rectangles[recIndex];

        // if (collidedRectangles[recIndex] == false) // didnt collide -> bound check it as it wasnt bound checked
        // {
        //     if (rec.isXOutsideNextFrame(screenBound) == true)
        //     {
        //         rec.dx *= -1.0f;
        //     }
        //     if (rec.isYOutsideNextFrame(screenBound) == true)
        //     {
        //         rec.dy *= -1.0f;
        //     }
        // }
        // rec.update();
        // timer3 += clock() - start;
        // clock_t start2 = clock();
        // this takes 11.8/15 of the time.. improve this thing
        // insert(recIndex, nodeAllocator, rec, horizontal, 0, screenBound);
        // timer3 += clock() - start2;
    }
    // timer2 += clock() - start;

    // enable this after fixing the bug
    deferredCleanup(tree);

    return (nOfIntersections);
}

void Node::deferredCleanup(Tree *tree)
{
    // TODO(david): use own structure with own memory allocation
    queue<Node *> cleanupQueue;
    cleanupQueue.push(this);
    while (cleanupQueue.empty() == false)
    {
        Node *node = cleanupQueue.front();
        cleanupQueue.pop();

        u32 nOfEmptyChilds = 0;
        for (u32 childIndex = 0;
            childIndex < NUMBER_OF_CHILDREN;
            ++childIndex)
        {
            if (node->hasChildren() == true)
            {
                Node *child = tree->nodeAllocator.getNode(node->_firstChild + childIndex);
                if (child->isBranch() == true) // if branch -> add it for processing
                {
                    cleanupQueue.push(child);
                }
                else if (child->isEmpty() == true)
                {
                    ++nOfEmptyChilds;
                }
            }
        }

        // If all the children were empty leaves, remove them and 
        // make this node the new empty leaf.
        if (nOfEmptyChilds == NUMBER_OF_CHILDREN)
        {
            NodeInfo childInfo;
            for (u32 childIndex = 0;
                 childIndex < NUMBER_OF_CHILDREN;
                 ++childIndex)
            {
                i32 childNodeIndex = node->_firstChild + childIndex;
                // TODO(david): no need to get the pointer again
                Node *child = tree->nodeAllocator.getNode(childNodeIndex);
                tree->leafHashAllocator.eraseLeafHash(child->_firstChild);
                childInfo.address[childIndex] = child;
                childInfo.index[childIndex] = childNodeIndex;
            }
            tree->nodeAllocator.deleteChildren(childInfo);
            node->_firstChild = -1;
            ASSERT(node->hasLeafHash() == false);

            // set node as leaf
            _curNumberOfRectangles = 0;
            if (hasLeafHash() == false)
            {
                _firstChild = tree->leafHashAllocator.allocateLeafHash();
            }
        }
    }
}

void Node::subdivide(NodeOrientation orientation, u32 curDepth, AABB curBound, Tree *tree)
{
    array<AABB, 2> childBounds = getChildBounds(orientation, curBound);
    vector<RecInfo> recInfo = tree->leafHashAllocator.getRecInfos(_firstChild, tree);

    // set node as a branch
    _curNumberOfRectangles = -1;
    tree->leafHashAllocator.eraseLeafHash(_firstChild);
    _firstChild = -1;

    NodeInfo nodeInfo;
    for (u32 iteration = 0;
         iteration < recInfo.size();
         ++iteration)
    {
        for (u32 childIndex = 0;
             childIndex < NUMBER_OF_CHILDREN;
             ++childIndex)
        {
            if (recInfo[iteration].rec.doesAABBIntersect(childBounds[childIndex]) == true)
            {
                Node *childNode;
                if (hasChildren() == false)
                {
                    nodeInfo = tree->nodeAllocator.allocateChildren();
                    childNode = nodeInfo.address[childIndex];
                    _firstChild = nodeInfo.index[0];
                    tree->nodeAllocator._numberOfLeafs += 2;
                }
                else
                {
                    childNode = nodeInfo.address[childIndex];
                }
                childNode->insert(recInfo[iteration].index, recInfo[iteration].rec, orientation == horizontal ? vertical : horizontal, curDepth + 1,
                    childBounds[childIndex], tree);
            }
        }
    }
}

void Node::printBounds(i32 nodesPrinted, Tree *tree) const
{
    // TODO(david): implement
}
