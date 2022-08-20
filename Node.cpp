#include "Node.hpp"
#include "NodeAllocator.hpp"
#include <bitset>

extern vector<Rec> rectangles;
RecNodeAllocator   recNodeAllocator;
extern Rec screenBound;

void Node::insert(u32 rectangleIndex, NodeAllocator &nodeAllocator, Rec rec, NodeOrientation orientation)
{
    if (!(_curNumberOfRectangles < 0))
    {
        if (_curNumberOfRectangles < NODE_LIMIT)
        {
            _firstRecNode = recNodeAllocator.allocate(_firstRecNode, rectangleIndex);
            ++_curNumberOfRectangles;
            return ;
        }
        subdivide(nodeAllocator, orientation);
    }

    for (u32 iteration = 0;
        iteration < NUMBER_OF_CHILDREN;
        ++iteration)
    {
        if (isChildValid(iteration))
        {
            Node *child = nodeAllocator.getNode(_children[iteration]);
            if (child->_nodeBound.doesRecIntersect(rec))
            {
                child->insert(rectangleIndex, nodeAllocator, rec, orientation == horizontal ? vertical : horizontal);
            }
        }
    }
}

u32 Node::checkIntersections(NodeAllocator &nodeAllocator) const
{
    u32 nOfIntersections = 0;

    bitset<32000> collidedRectangles;
    for (u32 nodeIndex = 0;
         nodeIndex < nodeAllocator._nodes.size();
         ++nodeIndex)
    {
        u32 numberOfEmptyChildren = 0;
        Node &node = nodeAllocator._nodes[nodeIndex];
        if (node._curNumberOfRectangles < 0)
            continue ;
        if (nodeAllocator._validNodes[nodeIndex])
        {
            array<Rec, NODE_LIMIT> recs;
            array<u32, NODE_LIMIT> recIndices;
            u32 recIndicesSize = 0;
            i32 recNodeIndex = node._firstRecNode;
            i32 lastRecNodeIndex = recNodeIndex;
            while (!(recNodeIndex < 0))
            {
                lastRecNodeIndex = recNodeIndex;
                RecNode recNode = recNodeAllocator.getNode(recNodeIndex);
                recIndices[recIndicesSize] = recNode.recIndex;
                recs[recIndicesSize++] = rectangles[recNode.recIndex];
                recNodeIndex = recNode.nextNode;
            }

            for (u32 i = 0;
                    i < recIndicesSize;
                    ++i)
            {
                if (collidedRectangles[recIndices[i]])
                    continue ;
                for (u32 j = i + 1;
                        j < recIndicesSize;
                        ++j)
                {
                    if (recs[i].doesRecIntersect(recs[j]))
                    {
                        collidedRectangles[recIndices[i]] = 1;
                        collidedRectangles[recIndices[j]] = 1;
                        r32 dpx = 3.0f;
                        r32 dpy = 3.0f;
                        Rec &rec = rectangles[recIndices[i]];
                        Rec &rec2 = rectangles[recIndices[j]];
                        r32 dpx2 = -3.0f;
                        r32 dpy2 = -3.0f;
                        if (rec.topLeftX + dpx >= screenBound.topLeftX + screenBound.width)
                        {
                            dpx *= -1;
                        }
                        if (rec.topLeftY + dpy >= screenBound.topLeftY + screenBound.height)
                        {
                            dpy *= -1;
                        }
                        if (rec2.topLeftX + dpx2 <= screenBound.topLeftX)
                        {
                            dpx2 *= -1;
                        }
                        if (rec2.topLeftY + dpy2 <= screenBound.topLeftY)
                        {
                            dpy2 *= -1;
                        }
                        // remove recs from their previous nodes
                        // need a query to find the biggest parent node
                        // then propogate the deletion from that point

                        // move them
                        rec.topLeftX += dpx;
                        rec.topLeftY += dpy;
                        rec2.topLeftX += dpx2;
                        rec2.topLeftY += dpy2;

                        // reinsert them to the quadtree
                        ++nOfIntersections;
                    }
                }
            }

            // for (u32 childIndex = 0;
            //      childIndex < NUMBER_OF_CHILDREN;
            //      ++childIndex)
            // {
            //     if (node.isChildValid(childIndex) == false)
            //     {
            //         ++numberOfEmptyChildren;
            //     }
            // }
            // // deferred cleanup
            // // If all the children were empty leaves, remove them and 
            // // make this node the new empty leaf.
            // if (numberOfEmptyChildren == NUMBER_OF_CHILDREN)
            // {
            //     if (node._firstRecNode)
            //     LOG();
            //     recNodeAllocator.delNode(node._firstRecNode, lastRecNodeIndex);
            //     node._firstRecNode = -1;
            //     node._curNumberOfRectangles = 0;
            // }
        }
    }

    return (nOfIntersections);
}

void Node::subdivide(NodeAllocator &nodeAllocator, NodeOrientation orientation)
{
    _curNumberOfRectangles = -1;

    r32 xoffset;
    r32 yoffset;
    xoffset = _nodeBound.width / 2.0f;
    yoffset = _nodeBound.height / 2.0f;

    array<Rec, NODE_LIMIT> recs;
    array<u32, NODE_LIMIT> recIndices;
    u32 recIndicesSize = 0;
    i32 nodeIndex = _firstRecNode;
    u32 lastRecNodeIndex = nodeIndex;
    while (!(nodeIndex < 0))
    {
        lastRecNodeIndex = nodeIndex;
        RecNode recNode = recNodeAllocator.getNode(nodeIndex);
        // ASSERT(recIndicesSize < recIndices.size());
        recIndices[recIndicesSize] = recNode.recIndex;
        recs[recIndicesSize++] = rectangles[recNode.recIndex];
        nodeIndex = recNode.nextNode;
    }

    // k-d tree, find average x or y offset depending on the orientation of the node
    xoffset = (orientation == horizontal ? 0.0f : _nodeBound.topLeftX);
    yoffset = (orientation == horizontal ? _nodeBound.topLeftY: 0.0f);
    r32 sumX = 0.0f;
    r32 sumY = 0.0f;
    for (Rec rec : recs)
    {
        sumX += rec.topLeftX + rec.width / 2.0f;
        sumY += rec.topLeftY + rec.height / 2.0f;
    }

    if (orientation == horizontal)
    {
        xoffset = sumX / (r32)recIndicesSize;
        if (xoffset < _nodeBound.topLeftX || xoffset > _nodeBound.topLeftX + _nodeBound.width)
        {
            xoffset = _nodeBound.topLeftX + _nodeBound.width / 2.0f;
        }
    }
    else
    {
        yoffset = sumY / (r32)recIndicesSize;
        if (yoffset < _nodeBound.topLeftY || yoffset > _nodeBound.topLeftY + _nodeBound.height)
        {
            yoffset = _nodeBound.topLeftY + _nodeBound.height / 2.0f;
        }
    }
    xoffset -= _nodeBound.topLeftX;
    yoffset -= _nodeBound.topLeftY;

    if (!(xoffset < _nodeBound.width && !(xoffset < 0)))
    {
        LOG("xoffset: " << xoffset);
        LOG(_nodeBound.width);
        ASSERT(false);
    }
    if (!(yoffset < _nodeBound.height && !(yoffset < 0)))
    {
        LOG("yoffset: " << yoffset);
        LOG(_nodeBound.height);
        ASSERT(false);
    }
    array<Rec, NUMBER_OF_CHILDREN> childBounds = {
        Rec{ _nodeBound.topLeftX,
            _nodeBound.topLeftY,
            orientation == horizontal ? xoffset : _nodeBound.width,
            orientation == horizontal ? _nodeBound.height : yoffset },
        Rec{ _nodeBound.topLeftX + xoffset,
            _nodeBound.topLeftY + yoffset,
            orientation == horizontal ? _nodeBound.width - xoffset : _nodeBound.width,
            orientation == horizontal ? _nodeBound.height : _nodeBound.height - yoffset}
    };

    for (u32 iteration = 0;
         iteration < recIndicesSize;
         ++iteration)
    {
        // ASSERT(recIndex < rectangles.size());
        for (u32 childIndex = 0;
             childIndex < NUMBER_OF_CHILDREN;
             ++childIndex)
        {
            if (childBounds[childIndex].doesRecIntersect(recs[iteration]))
            {
                Node *childNode;
                if (isChildValid(childIndex) == false)
                {
                    NodeInfo nodeInfo = nodeAllocator.allocateNode(childBounds[childIndex]);
                    childNode = nodeInfo.address;
                    ASSERT(childNode != nullptr);
                    _children[childIndex] = nodeInfo.index;
                }
                else
                {
                    childNode = nodeAllocator.getNode(_children[childIndex]);
                    ASSERT(childNode != nullptr);
                }
                childNode->insert(recIndices[iteration], nodeAllocator, recs[iteration], orientation == horizontal ? vertical : horizontal);
            }
        }
    }

    recNodeAllocator.delNode(_firstRecNode, lastRecNodeIndex);
}
