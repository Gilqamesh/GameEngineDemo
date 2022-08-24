#include "Node.hpp"
#include "NodeAllocator.hpp"
#include <bitset>
#include <fstream>
#include <queue>

LeafHashAllocator   leafHashAllocator;
extern Rec screenBound;
u32 maxInsertionDepth = 0;
Rec maxInsertionBound;
clock_t timer = 0;
clock_t timer2 = 0;
clock_t timer3 = 0;

extern ofstream insertionFile;
extern ofstream afterEraseFile;
extern ofstream afterReinsert;

void Node::insert(u32 recIndex, NodeAllocator &nodeAllocator, Rec rec, NodeOrientation orientation, u32 curDepth,
    queue<Node *> *updateQueue, unordered_set<Node *> *processedNodes)
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
                ASSERT(_curNumberOfRectangles == 0);
                _leafHashIndex = leafHashAllocator.allocateLeafHash();
            }
            leafHashAllocator.insert(recIndex, _leafHashIndex);
            ++_curNumberOfRectangles;
            return ;
        }
        ASSERT(isChildValid(0) == false);
        ASSERT(isChildValid(1) == false);
        subdivide(nodeAllocator, orientation, curDepth, updateQueue, processedNodes); // if full -> subdivide
        if (processedNodes != nullptr)
        {
            processedNodes->insert(this);
        }
        setBranch();
        --nodeAllocator._numberOfLeafs;
    }

    vector<Rec> childBounds = getChildBounds(orientation);

    // insert the rec to the children
    for (u32 childIndex = 0;
        childIndex < NUMBER_OF_CHILDREN;
        ++childIndex)
    {
        if (childBounds[childIndex].doesRecIntersect(rec) == true)
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

void Node::logInfo(ostream &os, NodeAllocator &nodeAllocator, i32 firstNodeIndex, u32 callIndex)
{
    queue<NodeInfo> nodePairs;
    nodePairs.push({ this, firstNodeIndex });
    os << "<h2>Call index: " << callIndex << "</h2>";
    os << "<p><ul>";
    while (nodePairs.empty() == false)
    {
        os << "<li>";
        NodeInfo nodePair = nodePairs.front();
        nodePairs.pop();

        vector<RecInfo> recInfos;
        if (nodePair.address->hasLeafHash())
        {
            recInfos = leafHashAllocator.getRecInfos(nodePair.address->_leafHashIndex);
        }
        os << "Node index: <span style=\"color:blue\" />" << nodePair.index << ",</span>&nbspbound: "
            << "<span style=\"color:green\" />" << nodePair.address->_nodeBound << "</span>,&nbspnumber of recs: "
            << nodePair.address->_curNumberOfRectangles << ",&nbspleafHashIndex: " << nodePair.address->_leafHashIndex << ",&nbspChildren indices: " << "<span style=\"color:red\" />";
        for (u32 childIndex = 0;
             childIndex < NUMBER_OF_CHILDREN;
             ++childIndex)
        {
            i32 childNodeIndex = nodePair.address->_children[childIndex];
            if (nodePair.address->isChildValid(childIndex) == true)
            {
                NodeInfo nodeInfo;
                nodeInfo.index = childNodeIndex;
                nodeInfo.address = nodeAllocator.getNode(nodeInfo.index);
                nodePairs.push(nodeInfo);
            }
            os << childNodeIndex << " ";
        }
        os << "</span></li>\n";
        os << " stored rectangles indices: <p font-size=14px>";
        for (RecInfo recInfo : recInfos)
        {
            os << recInfo.index << " ";
        }

    }
    os << "</p></ul></p>";
}

void Node::erase(u32 recIndex, NodeAllocator &nodeAllocator, Rec rec)
{
    if (isLeaf() == true)
    {
        ASSERT(_curNumberOfRectangles >= 0 && _children[0] == -1 && _children[1] == -1);
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

u32 Node::update(NodeAllocator &nodeAllocator, u32 iterationNumber)
{
    u32 nOfIntersections = 0;

    vector<bool> collidedRectangles(NUMBER_OF_INSERTIONS, false);

    // NOTE(david): This loop is mutative, needs further inspection
    // TODO(david): Different iteration is needed, since this iteration is mutative, we need a more dynamic traversal

    queue<Node *> updateQueue = nodeAllocator.getLeafQueue();
    unordered_set<Node *> processedNodes;
    while (updateQueue.empty() == false)
    {
        Node *node = updateQueue.front();
        updateQueue.pop();
        if (node->isLeaf() == false)
            continue ; // node is now a branch from previous iterations
        ASSERT(processedNodes.count(node) == 0); // the node should be a branch in this case, which should be filtered out by above condition

        // pull/copy from rectangles
        // IMPORTANT(david): problem here is that the updated hash table contains recs from previous loops that are updated
        // maybe alternating hash tables?
        // but that in theory shouldn't be a problem because we are only processing non-updated rec indices, no?
        // NOTE(david): what happens when a leaf we havent processed yet gets subdivided and its hash moves to its children...
        // those rectangles won't be collision checked... so upon subdivision, add the children node indices for processing,
        // unless the subdidvided node has already been processed
        vector<RecInfo> recInfo = leafHashAllocator.getRecInfos(node->_leafHashIndex);

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
                    if (collidedRectangles[rightRecIndex] == false)
                    {
                        Rec &leftRec = recInfo[leftIter].rec;
                        Rec &rightRec = recInfo[rightIter].rec;
                        if (leftRec.doesRecIntersect(rightRec) == true)
                        {
                            // remove the 2 recs for further collision detection with other recs
                            collidedRectangles[leftRecIndex] = true;
                            collidedRectangles[rightRecIndex] = true;

                            // remove the 2 recs from the tree
                            clock_t start = clock();
                            erase(leftRecIndex, nodeAllocator, leftRec);
                            erase(rightRecIndex, nodeAllocator, rightRec);
                            timer += clock() - start;
                            // node->logInfo(afterEraseFile, nodeAllocator, nodeIndex, iterationNumber);

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
                            if (leftRec.topLeftX + dpx >= screenBound.topLeftX + screenBound.width ||
                                leftRec.topLeftX + dpx + leftRec.width <= screenBound.topLeftX)
                            {
                                dpx *= -1.0f;
                            }
                            if (leftRec.topLeftY + dpy >= screenBound.topLeftY + screenBound.height ||
                                leftRec.topLeftY + dpy + leftRec.height <= screenBound.topLeftY)
                            {
                                dpy *= -1.0f;
                            }
                            if (rightRec.topLeftX + dpx2 >= screenBound.topLeftX + screenBound.width ||
                                rightRec.topLeftX + dpx2 + rightRec.width <= screenBound.topLeftX)
                            {
                                dpx2 *= -1.0f;
                            }
                            if (rightRec.topLeftY + dpy2 >= screenBound.topLeftY + screenBound.height ||
                                rightRec.topLeftY + dpy2 + rightRec.height <= screenBound.topLeftY)
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
                                    i < recInfo.size();
                                    ++i)
                                {
                                    cout << recInfo[i].index << " ";
                                }
                                LOG("Node leafHashIndex: " << node->_leafHashIndex);
                                LOG("Node children: " << node->_children[0] << " " << node->_children[1]);
                                LOG("Node bound: " << node->_nodeBound);
                                LOG("Node n of recs: " << node->_curNumberOfRectangles);
                                afterEraseFile.close();
                                ASSERT(false);
                            }
                            // TODO(david): inserting changes the tree's structure while looping over the nodes
                            ASSERT(leftRec.doesRecIntersect(_nodeBound));
                            ASSERT(rightRec.doesRecIntersect(_nodeBound));
                            insert(leftRecIndex, nodeAllocator, leftRec, horizontal, 0, &updateQueue, &processedNodes);
                            insert(rightRecIndex, nodeAllocator, rightRec, horizontal, 0, &updateQueue, &processedNodes);
                            timer2 += clock() - start;
                            ++nOfIntersections;

                            processedNodes.insert(node);

                            // break out from the second iteration, since the first rectangle collision is already resolved
                            break ;
                        }
                    }
                }
            }

            // map back into rectangles
            for (u32 iteration = 0;
                iteration < recInfo.size();
                ++iteration)
            {
                rectangles[recInfo[iteration].index] = recInfo[iteration].rec;
            }
        }
    }

    // enable this after fixing the bug
    deferredCleanup(nodeAllocator);

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
                i32 childNodeIndex = node->_children[childIndex];
                // TODO(david): no need to get the pointer again
                Node *child = nodeAllocator.getNode(childNodeIndex);
                leafHashAllocator.clearLeafHash(child->_leafHashIndex);
                NodeInfo childInfo = { child, childNodeIndex };
                nodeAllocator.deleteNode(childInfo);
                node->setChildInvalid(childIndex);
            }
            ASSERT(node->hasLeafHash());
            node->setLeaf();
        }
    }
}

void Node::subdivide(NodeAllocator &nodeAllocator, NodeOrientation orientation, u32 curDepth,
    queue<Node *> *updateQueue, unordered_set<Node *> *processedNodes)
{
    vector<Rec> childBounds = getChildBounds(orientation);
    vector<RecInfo> recInfo = leafHashAllocator.getRecInfos(_leafHashIndex);
    for (u32 iteration = 0;
         iteration < recInfo.size();
         ++iteration)
    {
        for (u32 childIndex = 0;
             childIndex < NUMBER_OF_CHILDREN;
             ++childIndex)
        {
            if (childBounds[childIndex].doesRecIntersect(recInfo[iteration].rec))
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
                if (processedNodes != nullptr && processedNodes->count(this) == 0)
                {
                    processedNodes->insert(childNode);
                    updateQueue->push(childNode);
                }
                childNode->insert(recInfo[iteration].index, nodeAllocator, recInfo[iteration].rec, orientation == horizontal ? vertical : horizontal, curDepth + 1);
            }
        }
    }
}

void Node::printBounds(i32 nodesPrinted, NodeAllocator &nodeAllocator) const
{
    for (u32 nodeIndex = 0;
         nodeIndex < nodeAllocator.size() && nodesPrinted >= 0;
         ++nodeIndex)
    {
        if (nodeAllocator.isValid(nodeIndex))
        {
            --nodesPrinted;
            Node *node = nodeAllocator.getNode(nodeIndex);
            LOG(node->_nodeBound);
        }
    }
}
