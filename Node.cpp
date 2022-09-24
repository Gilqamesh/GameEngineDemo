#include "NodeAllocator.hpp"
#include "Node.hpp"
#include <bitset>
#include <fstream>
#include "Tree.hpp"

NodeListAllocator::NodeListAllocator()
{
    _nodeLists.reserve(8192);
    _freeList = -1;
    _curIndex = 0;
    _deletionCount = 0;
}

RecInfos NodeListAllocator::getRecInfos(i32 beginIndex, Tree *tree)
{
    RecInfos result = {};

    while (beginIndex != -1)
    {
        NodeList nodeList = _nodeLists[beginIndex];
        result.recs[result.size++] = { nodeList.index, tree->rectangles[nodeList.index] };
        beginIndex = nodeList.next;
    }

    return (result);
}

void Node::insert(u32 recIndex, Rec rec, AABB curBound, Tree *tree)
{
    if (isLeaf() == true)
    {
        // just insert it to the current node and allow the node to store more agents
        if (((curBound.w < 16 || curBound.h < 16) && _curNumberOfRectangles < HARD_NODE_LIMIT) || _curNumberOfRectangles < NODE_LIMIT) // if not full yet
        {
            _firstChild = tree->nodeListAllocator.insert(_firstChild, recIndex);
            ++_curNumberOfRectangles;
            return ;
        }
        subdivide(curBound, tree);
        --tree->nodeAllocator._numberOfLeafs;
    }
    
    array<AABB, NUMBER_OF_CHILDREN> childBounds = getChildBounds(curBound);
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
            childNode->insert(recIndex, rec, childBounds[childIndex], tree);
        }
    }
}

// TODO(david): better structure for this
queue<NodeLeaf> Node::getLeafs(AABB curBound, Tree *tree)
{
    queue<NodeLeaf> leafs;
    queue<NodeLeaf> toProcess;
    toProcess.push({ curBound, this });

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
                array<AABB, NUMBER_OF_CHILDREN> childBounds = getChildBounds(curNode.bound);

                for (u32 childIndex = 0;
                    childIndex < NUMBER_OF_CHILDREN;
                    ++childIndex)
                {
                    // TODO(david): get NodeInfo once and iterate over the addresses
                    Node *child = tree->nodeAllocator.getNode(node->_firstChild + childIndex);
                    toProcess.push({ childBounds[childIndex], child });
                }
            }
        }
    }

    return (leafs);
}

u32 Node::update(AABB bound, Tree *tree)
{
    u32 nOfIntersections = 0;

    vector<bool> collidedRectangles(NUMBER_OF_INSERTIONS, false);

    // TODO(david): use a different structure
    queue<NodeLeaf> leafs = getLeafs(bound, tree);
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
            // vector<RecInfo> recInfo = tree->leafHashAllocator.getRecInfos(node->_firstChild, tree);
            RecInfos recInfo = tree->nodeListAllocator.getRecInfos(node->_firstChild, tree);
            node->_firstChild = -1;
            node->_curNumberOfRectangles = 0;
            // timer += clock() - start;

            for (u32 leftIter = 0;
                leftIter < recInfo.size;
                ++leftIter)
            {
                u32 leftRecIndex = recInfo.recs[leftIter].index;
                if (collidedRectangles[leftRecIndex] == false)
                {
                    for (u32 rightIter = leftIter + 1;
                        rightIter < recInfo.size;
                        ++rightIter)
                    {
                        u32 rightRecIndex = recInfo.recs[rightIter].index;
                        ASSERT(leftRecIndex != rightRecIndex);

                        if (collidedRectangles[rightRecIndex] == false)
                        {
                            Rec leftRec = recInfo.recs[leftIter].rec;
                            Rec rightRec = recInfo.recs[rightIter].rec;
                            if (leftRec.doesRecIntersect(rightRec) == true)
                            {
                                // remove the 2 recs for further collision detection with other recs
                                collidedRectangles[leftRecIndex] = true;
                                collidedRectangles[rightRecIndex] = true;

                                leftRec.dx *= -1.0f;
                                leftRec.dy *= -1.0f;
                                rightRec.dx *= -1.0f;
                                rightRec.dy *= -1.0f;

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
                 i < recInfo.size;
                 ++i)
            {
                tree->rectangles[recInfo.recs[i].index] = recInfo.recs[i].rec;
            }
            // timer2 += clock() - start;

            // tree->leafHashAllocator.clearLeafHash(node->_firstChild);
        }
    }

    tree->nodeListAllocator.clear();

    // TODO(david): profile this loop, and update multiple rectangles at a time by using simd intrinsics
    const u32 nOfConcurrentInserts = 256;

    u32 rectanglesSize = tree->rectangles.size();
    for (u32 recIndex = 0;
         recIndex < rectanglesSize;
         recIndex += nOfConcurrentInserts)
    {
        array<Rec, nOfConcurrentInserts> recs;
        u32 recsSize = 0;
        for (u32 i = 0;
             i < nOfConcurrentInserts && i + recIndex < rectanglesSize;
             ++i)
        {
            u32 curRecIndex = i + recIndex;
            Rec &rec = tree->rectangles[curRecIndex];
            recs[recsSize++] = rec;
        }


        for (u32 i = 0;
             i < recsSize;
             ++i)
        {
            if (collidedRectangles[recIndex + i] == false) // didnt collide -> bound check it as it wasnt bound checked
            {
                if (recs[i].isXOutsideNextFrame(bound) == true)
                {
                    recs[i].dx *= -1.0f;
                }
                if (recs[i].isYOutsideNextFrame(bound) == true)
                {
                    recs[i].dy *= -1.0f;
                }
            }
            recs[i].update();
            insert(recIndex + i, recs[i], bound, tree);
        }

        for (u32 i = 0;
             i < recsSize;
             ++i)
        {
            tree->rectangles[recIndex + i] = recs[i];
        }
    }

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
                ASSERT(child->_firstChild == -1); // see below comment vvvvvvv
                // tree->leafHashAllocator.eraseLeafHash(child->_firstChild); // this is not necessary anymore as all leaf hashes has been removed
                childInfo.address[childIndex] = child;
                childInfo.index[childIndex] = childNodeIndex;
            }
            tree->nodeAllocator.deleteChildren(childInfo);
            ASSERT(node->hasLeafHash() == false);

            // set node as leaf
            node->_curNumberOfRectangles = 0;
            // node->_firstChild = tree->leafHashAllocator.allocateLeafHash();
            node->_firstChild = -1;

            tree->nodeAllocator._numberOfLeafs -= NUMBER_OF_CHILDREN;
        }
    }
}

void Node::subdivide(AABB curBound, Tree *tree)
{
    array<AABB, NUMBER_OF_CHILDREN> childBounds = getChildBounds(curBound);
    RecInfos recInfo = tree->nodeListAllocator.getRecInfos(_firstChild, tree);

    // set node as a branch
    _curNumberOfRectangles = -1;
    tree->nodeListAllocator.eraseList(_firstChild);
    _firstChild = -1;

    NodeInfo nodeInfo;
    for (u32 iteration = 0;
         iteration < recInfo.size;
         ++iteration)
    {
        for (u32 childIndex = 0;
             childIndex < NUMBER_OF_CHILDREN;
             ++childIndex)
        {
            if (recInfo.recs[iteration].rec.doesAABBIntersect(childBounds[childIndex]) == true)
            {
                Node *childNode;
                if (hasChildren() == false)
                {
                    nodeInfo = tree->nodeAllocator.allocateChildren();
                    childNode = nodeInfo.address[childIndex];
                    _firstChild = nodeInfo.index[0];
                    tree->nodeAllocator._numberOfLeafs += NUMBER_OF_CHILDREN;
                }
                else
                {
                    childNode = nodeInfo.address[childIndex];
                }
                childNode->insert(recInfo.recs[iteration].index, recInfo.recs[iteration].rec, childBounds[childIndex], tree);
            }
        }
    }
}

void Node::printBounds(i32 nodesPrinted, Tree *tree) const
{
    // TODO(david): implement
}
