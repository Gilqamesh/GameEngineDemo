#include "NodeAllocator.hpp"
#include "Node.hpp"
#include <bitset>
#include <fstream>
#include "Tree.hpp"

clock_t timer = 0;
clock_t timer2 = 0;
clock_t timer3 = 0;

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

NodeListAllocator::NodeListAllocator()
{
    _freeList = -1;
    _curIndex = 0;
    _deletionCount = 0;
}

vector<RecInfo> NodeListAllocator::getRecInfos(i32 beginIndex, Tree *tree)
{
    vector<RecInfo> result;

    while (beginIndex != -1)
    {
        NodeList nodeList = _nodeLists[beginIndex];
        result.push_back({ nodeList.recIndex, tree->rectangles[nodeList.recIndex] });
        beginIndex = nodeList.next;
    }

    return (result);
}

struct InsertInfo
{
    Node *node;
    AABB curBound;
    u32 recIndex;
    Rec rec;
};

void Node::insert(u32 rectangleIndex, Rec rectangle, AABB bound, Tree *tree)
{
    queue<InsertInfo> insertionQueue;
    insertionQueue.push({ this, bound, rectangleIndex, rectangle });
    while (insertionQueue.empty() == false)
    {
        InsertInfo insertionInfo = insertionQueue.front();
        insertionQueue.pop();

        Node *node = insertionInfo.node;
        AABB curBound = insertionInfo.curBound;
        u32 recIndex = insertionInfo.recIndex;
        Rec rec = insertionInfo.rec;

        array<AABB, NUMBER_OF_CHILDREN> childBounds = getChildBounds(curBound);
        ASSERT(!(curBound.w < 1 || curBound.h < 1));
        if (node->isLeaf() == true)
        {
            if (node->_curNumberOfRectangles < NODE_LIMIT) // if not full yet
            {
                node->_firstChild = tree->nodeListAllocator.insert(node->_firstChild, recIndex);
                ++node->_curNumberOfRectangles;
                continue ;
            }
            // subdivide node
            vector<RecInfo> recInfo = tree->nodeListAllocator.getRecInfos(node->_firstChild, tree);

            // set node as a branch
            node->_curNumberOfRectangles = -1;
            tree->nodeListAllocator.eraseList(node->_firstChild);
            node->_firstChild = -1;

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
                        if (node->hasChildren() == false)
                        {
                            nodeInfo = tree->nodeAllocator.allocateChildren();
                            childNode = nodeInfo.address[childIndex];
                            node->_firstChild = nodeInfo.index[0];
                            tree->nodeAllocator._numberOfLeafs += NUMBER_OF_CHILDREN;
                        }
                        else
                        {
                            childNode = nodeInfo.address[childIndex];
                        }
                        insertionQueue.push({ childNode, childBounds[childIndex], recInfo[iteration].index, recInfo[iteration].rec });
                    }
                }
            }
            //
            --tree->nodeAllocator._numberOfLeafs;
        }

        // insert the rec to the children
        ASSERT(node->hasChildren() == true);
        NodeInfo nodeInfo = tree->nodeAllocator.getChildren(node->_firstChild);
        for (u32 childIndex = 0;
            childIndex < NUMBER_OF_CHILDREN;
            ++childIndex)
        {
            if (rec.doesAABBIntersect(childBounds[childIndex]) == true)
            {
                Node *childNode = nodeInfo.address[childIndex];
                insertionQueue.push({ childNode, childBounds[childIndex], recIndex, rec });
            }
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

    bitset<NUMBER_OF_INSERTIONS> collidedRectangles;

    // new update strategy
    // iterate over the rectangles
    //  - remove rec
    //  - move rec
    //  - reinsert rec

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
            vector<RecInfo> recInfo = tree->nodeListAllocator.getRecInfos(node->_firstChild, tree);
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
                    i < recInfo.size();
                    ++i)
            {
                tree->rectangles[recInfo[i].index] = recInfo[i].rec;
            }
            // timer2 += clock() - start;

            // tree->leafHashAllocator.clearLeafHash(node->_firstChild);
            node->_firstChild = -1;
            node->_curNumberOfRectangles = 0;
        }
    }

    tree->nodeListAllocator.clear();

    // TODO(david): profile this loop, and update multiple rectangles at a time by using simd intrinsics
    const u32 nOfConcurrentInserts = 1024;

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

        for (u32 i = 0;
             i < nOfConcurrentInserts && i + recIndex < rectanglesSize;
             ++i)
        {
            insert(recIndex + i, recs[i], bound, tree);
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
    // vector<RecInfo> recInfo = tree->leafHashAllocator.getRecInfos(_firstChild, tree);
    vector<RecInfo> recInfo = tree->nodeListAllocator.getRecInfos(_firstChild, tree);

    // set node as a branch
    _curNumberOfRectangles = -1;
    // tree->leafHashAllocator.eraseLeafHash(_firstChild);
    // TODO(david): profile this as its O(n) time to erase
    // even if this is O(n), its really fast compared to everything else it takes no time
    tree->nodeListAllocator.eraseList(_firstChild);
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
                    tree->nodeAllocator._numberOfLeafs += NUMBER_OF_CHILDREN;
                }
                else
                {
                    childNode = nodeInfo.address[childIndex];
                }
                childNode->insert(recInfo[iteration].index, recInfo[iteration].rec, childBounds[childIndex], tree);
            }
        }
    }
}

void Node::printBounds(i32 nodesPrinted, Tree *tree) const
{
    // TODO(david): implement
}
