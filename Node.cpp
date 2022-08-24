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
                ASSERT(_curNumberOfRectangles == 0);
                _leafHashIndex = leafHashAllocator.allocateLeafHash();
            }
            leafHashAllocator.insert(recIndex, _leafHashIndex);
            ++_curNumberOfRectangles;
            return ;
        }
        ASSERT(isChildValid(0) == false);
        ASSERT(isChildValid(1) == false);
        subdivide(nodeAllocator, orientation, curDepth); // if full -> subdivide
        setBranch();
        --nodeAllocator._numberOfLeafs;
    }

    array<Rec, 2> childBounds = getChildBounds(orientation);

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

u32 Node::update(NodeAllocator &nodeAllocator, u32 iterationNumber)
{
    u32 nOfIntersections = 0;

    vector<bool> collidedRectangles(NUMBER_OF_INSERTIONS, false);

    // new update strategy
    // iterate over the rectangles
    //  - remove rec
    //  - move rec
    //  - reinsert rec

    clock_t start = clock();
    // change rec velocities
    for (u32 nodeIndex = 0;
         nodeIndex < nodeAllocator._nextNodeIndex;
         ++nodeIndex)
    {
        if (nodeAllocator.isValid(nodeIndex) == true)
        {
            Node *node = nodeAllocator.getNode(nodeIndex);
            if (node->isLeaf() == true)
            {
                // map recs out to cache
                // TODO(david): use own structure
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
                                    if (leftRec.isXOutsideNextFrame(screenBound) == true)
                                    {
                                        leftRec.dx *= -1.0f;
                                    }
                                    if (leftRec.isYOutsideNextFrame(screenBound) == true)
                                    {
                                        leftRec.dy *= -1.0f;
                                    }
                                    if (rightRec.isXOutsideNextFrame(screenBound) == true)
                                    {
                                        rightRec.dx *= -1.0f;
                                    }
                                    if (rightRec.isYOutsideNextFrame(screenBound) == true)
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

                // map the velocities back from cache to storage
                for (u32 i = 0;
                     i < recInfo.size();
                     ++i)
                {
                    rectangles[recInfo[i].index] = recInfo[i].rec;
                }

                leafHashAllocator.clearLeafHash(node->_leafHashIndex);
                node->_curNumberOfRectangles = 0;
            }
        }
    }
    timer += clock() - start;

    start = clock();
    // TODO(david): profile this loop, and update multiple rectangles at a time by using simd intrinsics
    const u32 nOfConcurrentInserts = 128;
    for (u32 recIndex = 0;
         recIndex < rectangles.size();
         recIndex += nOfConcurrentInserts)
    {
        array<Rec, nOfConcurrentInserts> recs;
        u32 recsSize = 0;
        for (u32 i = 0;
             i < nOfConcurrentInserts && i + recIndex < rectangles.size();
             ++i)
        {
            u32 curRecIndex = i + recIndex;
            Rec &rec = rectangles[curRecIndex];

            if (collidedRectangles[curRecIndex] == false) // didnt collide -> bound check it as it wasnt bound checked
            {
                if (rec.isXOutsideNextFrame(screenBound) == true)
                {
                    rec.dx *= -1.0f;
                }
                if (rec.isYOutsideNextFrame(screenBound) == true)
                {
                    rec.dy *= -1.0f;
                }
            }
            rec.update();
            recs[recsSize++] = rec;
        }

        for (u32 i = 0;
             i < nOfConcurrentInserts && i + recIndex < rectangles.size();
             ++i)
        {
            insert(recIndex + i, nodeAllocator, recs[i], horizontal, 0);
        }
    }
    timer2 += clock() - start;

    start = clock();
    // enable this after fixing the bug
    deferredCleanup(nodeAllocator);
    timer3 += clock() - start;

    return (nOfIntersections);
}

void Node::deferredCleanup(NodeAllocator &nodeAllocator)
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
                leafHashAllocator.eraseLeafHash(child->_leafHashIndex);
                NodeInfo childInfo = { child, childNodeIndex };
                nodeAllocator.deleteNode(childInfo);
                node->setChildInvalid(childIndex);
            }
            ASSERT(node->hasLeafHash() == false);
            node->setLeaf();
        }
    }
}

void Node::subdivide(NodeAllocator &nodeAllocator, NodeOrientation orientation, u32 curDepth)
{
    array<Rec, 2> childBounds = getChildBounds(orientation);
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
