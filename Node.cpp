#include "Node.hpp"
#include "NodeAllocator.hpp"
#include <bitset>

LeafHashAllocator   leafHashAllocator;
extern Rec screenBound;
u32 maxInsertionDepth = 0;
Rec maxInsertionBound;
clock_t timer = 0;
clock_t timer2 = 0;
clock_t timer3 = 0;

void Node::insert(u32 recIndex, NodeAllocator &nodeAllocator, Rec rec, NodeOrientation orientation, u32 curDepth)
{
    if (curDepth > maxInsertionDepth)
    {
        maxInsertionDepth = curDepth;
        maxInsertionBound = _nodeBound;
    }
    if (_nodeBound.width < 1.0f || _nodeBound.height < 1.0f)
    {
        LOG(_nodeBound);
        ASSERT(false);
    }
    if (isLeaf() == true)
    {
        if (_curNumberOfRectangles < NODE_LIMIT) // if not full yet
        {
            if (hasLeafHash() == false) // get a LeafHash to store the recs
            {
                _leafHashIndex = leafHashAllocator.allocateLeafHash();
            }
            leafHashAllocator.insert(recIndex, _leafHashIndex);
            ++_curNumberOfRectangles;
            return ;
        }
        subdivide(nodeAllocator, orientation, curDepth); // if full -> subdivide
        setBranch();
        --nodeAllocator._numberOfLeafs;
    }

    array<Rec, NUMBER_OF_CHILDREN> childBounds = getChildBounds(orientation);

    // insert the rec to the children
    for (u32 childIndex = 0;
        childIndex < NUMBER_OF_CHILDREN;
        ++childIndex)
    {
        if (childBounds[childIndex].doesRecIntersect(rec))
        {
            Node *childNode;
            if (isChildValid(childIndex) == false)
            {
                NodeInfo nodeInfo = nodeAllocator.allocateNode(childBounds[childIndex]);
                childNode = nodeInfo.address;
                _children[childIndex] = nodeInfo.index;
                ++nodeAllocator._numberOfLeafs;
            }
            else
            {
                childNode = nodeAllocator.getNode(_children[childIndex]);
            }
            childNode->insert(recIndex, nodeAllocator, rec, orientation == horizontal ? vertical : horizontal, curDepth + 1);
        }
    }
}

void Node::erase(u32 recIndex, NodeAllocator &nodeAllocator, Rec rec)
{
    if (isLeaf() == true)
    {
        if (leafHashAllocator.erase(recIndex, _leafHashIndex) == true)
        {
            --_curNumberOfRectangles;
        }
        ASSERT(!(_curNumberOfRectangles < 0));
        return ;
    }
    for (u32 childIndex = 0;
         childIndex < NUMBER_OF_CHILDREN;
         ++childIndex)
    {
        if (isChildValid(childIndex) == true)
        {
            Node *child = nodeAllocator.getNode(_children[childIndex]);
            ASSERT(child);
            if (child->_nodeBound.doesRecIntersect(rec) == true) // only call erase on children that intersect the rec
            {
                child->erase(recIndex, nodeAllocator, rec);
            }
        }
    }
}

u32 Node::update(NodeAllocator &nodeAllocator)
{
    u32 nOfIntersections = 0;

    bitset<NUMBER_OF_INSERTIONS> collidedRectangles;
    for (u32 nodeIndex = 0;
         nodeIndex < nodeAllocator._nodes.size();
         ++nodeIndex)
    {
        if (nodeAllocator._validNodes[nodeIndex])
        {
            Node &node = nodeAllocator._nodes[nodeIndex];
            if (node.isLeaf() == true)
            {
                // pull/copy from rectangles
                RecsInfo recsInfo = leafHashAllocator.getRecInfos(node._leafHashIndex);

                for (u32 leftIter = 0;
                    leftIter < recsInfo.size;
                    ++leftIter)
                {
                    u32 leftRecIndex = recsInfo.recInfos[leftIter].index;
                    if (collidedRectangles.test(leftRecIndex) == false)
                    {
                        for (u32 rightIter = leftIter + 1;
                            rightIter < recsInfo.size;
                            ++rightIter)
                        {
                            u32 rightRecIndex = recsInfo.recInfos[rightIter].index;
                            if (collidedRectangles.test(rightRecIndex) == false)
                            {
                                Rec &leftRec = recsInfo.recInfos[leftIter].rec;
                                Rec &rightRec = recsInfo.recInfos[rightIter].rec;
                                if (leftRec.doesRecIntersect(rightRec))
                                {
                                    // remove the 2 recs for further collision detection with other recs
                                    collidedRectangles.set(leftRecIndex);
                                    collidedRectangles.set(rightRecIndex);

                                    // remove the 2 recs from the tree
                                    clock_t start = clock();
                                    erase(leftRecIndex, nodeAllocator, leftRec);
                                    erase(rightRecIndex, nodeAllocator, rightRec);
                                    timer += clock() - start;

                                    // move the 2 recs
                                    // r32 dpx = 0.0f;
                                    // r32 dpy = 0.0f;
                                    // r32 dpx2 = 0.0f;
                                    // r32 dpy2 = 0.0f;
                                    r32 dpx = 40.0f;
                                    r32 dpy = 35.0f;
                                    r32 dpx2 = -20.0f;
                                    r32 dpy2 = -35.0f;
                                    // r32 dpx = getRand(-50.0f, 50.0f);
                                    // r32 dpy = getRand(-50.0f, 50.0f);
                                    // r32 dpx2 = getRand(-50.0f, 50.0f);
                                    // r32 dpy2 = getRand(-50.0f, 50.0f);
                                    if (leftRec.topLeftX + dpx > screenBound.topLeftX + screenBound.width ||
                                        leftRec.topLeftX + dpx + leftRec.width < screenBound.topLeftX)
                                    {
                                        dpx *= -1.0f;
                                    }
                                    if (leftRec.topLeftY + dpy > screenBound.topLeftY + screenBound.height ||
                                        leftRec.topLeftY + dpy + leftRec.height < screenBound.topLeftY)
                                    {
                                        dpy *= -1.0f;
                                    }
                                    if (rightRec.topLeftX + dpx2 > screenBound.topLeftX + screenBound.width ||
                                        rightRec.topLeftX + dpx2 + rightRec.width < screenBound.topLeftX)
                                    {
                                        dpx2 *= -1.0f;
                                    }
                                    if (rightRec.topLeftY + dpy2 > screenBound.topLeftY + screenBound.height ||
                                        rightRec.topLeftY + dpy2 + rightRec.height < screenBound.topLeftY)
                                    {
                                        dpy2 *= -1.0f;
                                    }

                                    leftRec.topLeftX += dpx;
                                    leftRec.topLeftY += dpy;
                                    rightRec.topLeftX += dpx2;
                                    rightRec.topLeftY += dpy2;

                                    // reinsert the 2 recs to tree
                                    start = clock();
                                    if (leftRecIndex == rightRecIndex)
                                    {
                                        LOG("");
                                        LOG(leftRec);
                                        for (u32 i = 0;
                                             i < recsInfo.size;
                                             ++i)
                                        {
                                            cout << recsInfo.recInfos[i].index << " ";
                                        }
                                        LOG("");
                                        ASSERT(false);
                                    }
                                    insert(leftRecIndex, nodeAllocator, leftRec, horizontal, 0);
                                    insert(rightRecIndex, nodeAllocator, rightRec, horizontal, 0);
                                    timer2 += clock() - start;
                                    ++nOfIntersections;
                                }
                            }
                        }
                    }
                }

                // map back into rectangles
                for (u32 iteration = 0;
                    iteration < recsInfo.size;
                    ++iteration)
                {
                    rectangles[recsInfo.recInfos[iteration].index] = recsInfo.recInfos[iteration].rec;
                }
            }
        }
    }

    return (nOfIntersections);
}

void Node::deferredCleanup(NodeAllocator &nodeAllocator)
{
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
            if (node->isChildValid(childIndex) == true)
            {
                Node *child = nodeAllocator.getNode(node->_children[childIndex]);
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
            for (u32 childIndex = 0;
                childIndex < NUMBER_OF_CHILDREN;
                ++childIndex)
            {
                ASSERT(node->isChildValid(childIndex));
                u32 childNodeIndex = node->_children[childIndex];
                // TODO(david): no need to get the pointer again
                Node *child = nodeAllocator.getNode(childNodeIndex);
                leafHashAllocator.clearLeafHash(child->_leafHashIndex);
                NodeInfo childInfo = { child, childNodeIndex };
                nodeAllocator.deleteNode(childInfo);
                node->setChildInvalid(childIndex);
            }
            node->setLeaf();
        }
    }
}

void Node::subdivide(NodeAllocator &nodeAllocator, NodeOrientation orientation, u32 curDepth)
{
    array<Rec, NUMBER_OF_CHILDREN> childBounds = getChildBounds(orientation);
    RecsInfo recsInfo = leafHashAllocator.getRecInfos(_leafHashIndex);
    for (u32 iteration = 0;
         iteration < recsInfo.size;
         ++iteration)
    {
        for (u32 childIndex = 0;
             childIndex < NUMBER_OF_CHILDREN;
             ++childIndex)
        {
            if (childBounds[childIndex].doesRecIntersect(recsInfo.recInfos[iteration].rec))
            {
                Node *childNode;
                if (isChildValid(childIndex) == false)
                {
                    NodeInfo nodeInfo = nodeAllocator.allocateNode(childBounds[childIndex]);
                    childNode = nodeInfo.address;
                    _children[childIndex] = nodeInfo.index;
                    ++nodeAllocator._numberOfLeafs;
                }
                else
                {
                    childNode = nodeAllocator.getNode(_children[childIndex]);
                }
                childNode->insert(recsInfo.recInfos[iteration].index, nodeAllocator, recsInfo.recInfos[iteration].rec, orientation == horizontal ? vertical : horizontal, curDepth + 1);
            }
        }
    }
}

void Node::printBounds(i32 nodesPrinted, NodeAllocator &nodeAllocator) const
{
    for (u32 nodeIndex = 0;
         nodeIndex < NODE_POOL_SIZE;
         ++nodeIndex)
    {
        if (nodeAllocator._validNodes[nodeIndex])
        {
            LOG(nodeAllocator._nodes[nodeIndex]._nodeBound);
        }
    }
}
