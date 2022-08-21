#include "Node.hpp"
#include "NodeAllocator.hpp"
#include <bitset>

extern vector<Rec> rectangles;
LeafHashAllocator   leafHashAllocator;
extern Rec screenBound;
u32 maxInsertionDepth = 0;
Rec maxInsertionBound;

void Node::insert(u32 rectangleIndex, NodeAllocator &nodeAllocator, Rec rec, NodeOrientation orientation, u32 curDepth)
{
    if (curDepth > maxInsertionDepth)
    {
        maxInsertionDepth = curDepth;
        maxInsertionBound = _nodeBound;
    }
    if (_nodeBound.width < 1.0f)
    {
        LOG(_nodeBound);
        ASSERT(false);
    }
    if (_nodeBound.height < 1.0f)
    {
        LOG(_nodeBound);
        ASSERT(false);
    }
    if (isInternal() == false)
    {
        if (_curNumberOfRectangles < NODE_LIMIT)
        {
            if (_leafHashIndex == UINT16_MAX)
            {
                _leafHashIndex = leafHashAllocator.allocateLeafHash();
            }
            leafHashAllocator.insert(rectangleIndex, _leafHashIndex);
            ++_curNumberOfRectangles;
            return ;
        }
        subdivide(nodeAllocator, orientation, curDepth);
        setInternal();
        --nodeAllocator._numberOfLeafs;
    }

    for (u32 iteration = 0;
        iteration < NUMBER_OF_CHILDREN;
        ++iteration)
    {
        if (isChildValid(iteration) == true)
        {
            Node *child = nodeAllocator.getNode(_children[iteration]);
            if (child->_nodeBound.doesRecIntersect(rec))
            {
                child->insert(rectangleIndex, nodeAllocator, rec, orientation == horizontal ? vertical : horizontal, curDepth + 1);
            }
        }
    }
}

void Node::erase(u32 rectangleIndex, NodeAllocator &nodeAllocator, Rec rec)
{
    for (u32 childIndex = 0;
         childIndex < NUMBER_OF_CHILDREN;
         ++childIndex)
    {
        if (isChildValid(childIndex) == true)
        {
            Node *child = nodeAllocator.getNode(_children[childIndex]);
            ASSERT(child);
            if (child->_nodeBound.doesRecIntersect(rec) == true)
            {
                // check if child is a leaf, if so -> delete it from its list
                // if not, propogate the erase down the child 
                if (child->isInternal() == true)
                {
                    child->erase(rectangleIndex, nodeAllocator, rec);
                }
                else
                {
                    if (leafHashAllocator.erase(rectangleIndex, child->_leafHashIndex))
                    {
                        --child->_curNumberOfRectangles;
                    }
                    // NOTE(david): This is not deferred cleanup
                    // if (child->_curNumberOfRectangles == 0)
                    // {
                    //     leafHashAllocator.clearLeafHash(child->_leafHashIndex);
                    //     NodeInfo nodeInfo = { child, _children[childIndex] };
                    //     nodeAllocator.deleteNode(nodeInfo);
                    //     setChildInvalid(childIndex);
                    // }
                }
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
            if (node.isInternal())
                continue ;
            array<Rec*, NODE_LIMIT> recs;
            array<u32, NODE_LIMIT> recIndices;
            u32 recsSize = 0;
            for (u32 i = 0;
                 i < NODE_LIMIT;
                 ++i)
            {
                ASSERT(node._leafHashIndex < leafHashAllocator._leafHashes.size());
                u32 recIndex = leafHashAllocator._leafHashes[node._leafHashIndex].recIndices[i];
                if (recIndex == EMPTY_HASH_SLOT) continue ;
                recIndices[recsSize] = recIndex;
                recs[recsSize++] = &rectangles[recIndex];
            }

            // for recs that collided
            // remove recs from tree
            // move them in the world
            // reinsert them in the tree
            for (u32 i = 0;
                    i < recsSize;
                    ++i)
            {
                if (collidedRectangles[recIndices[i]] == 1)
                    continue ;
                for (u32 j = i + 1;
                        j < recsSize;
                        ++j)
                {
                    if (collidedRectangles[recIndices[j]] == 1)
                        continue ;
                    if (recs[i]->doesRecIntersect(*recs[j]))
                    {
                        collidedRectangles[recIndices[i]] = 1;
                        collidedRectangles[recIndices[j]] = 1;
                        r32 dpx = 75.0f;
                        r32 dpy = 35.0f;
                        r32 dpx2 = -50.0f;
                        r32 dpy2 = -30.0f;
                        if (recs[i]->topLeftX + dpx >= screenBound.topLeftX + screenBound.width ||
                            recs[i]->topLeftX + dpx + recs[i]->width < screenBound.topLeftX)
                        {
                            dpx *= -1;
                        }
                        if (recs[i]->topLeftY + dpy >= screenBound.topLeftY + screenBound.height ||
                            recs[i]->topLeftY + dpy + recs[i]->height < screenBound.topLeftY)
                        {
                            dpy *= -1;
                        }
                        if (recs[j]->topLeftX + dpx2 <= screenBound.topLeftX ||
                            recs[j]->topLeftX + dpx2 + recs[j]->width < screenBound.topLeftX)
                        {
                            dpx2 *= -1;
                        }
                        if (recs[j]->topLeftY + dpy2 <= screenBound.topLeftY ||
                            recs[j]->topLeftY + dpy2 + recs[j]->height < screenBound.topLeftY)
                        {
                            dpy2 *= -1;
                        }
                        // remove rec
                        erase(recIndices[i], nodeAllocator, *recs[i]);
                        erase(recIndices[j], nodeAllocator, *recs[j]);

                        // move them
                        recs[i]->topLeftX += dpx;
                        recs[i]->topLeftY += dpy;
                        recs[j]->topLeftX += dpx2;
                        recs[j]->topLeftY += dpy2;

                        // reinsert them to the quadtree
                        insert(recIndices[i], nodeAllocator, *recs[i], horizontal, 0);
                        insert(recIndices[j], nodeAllocator, *recs[j], horizontal, 0);
                        ++nOfIntersections;
                    }
                }
            }
        }
    }

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

        u32 numberOfEmptyChildren = 0;
        for (u32 childIndex = 0;
            childIndex < NUMBER_OF_CHILDREN;
            ++childIndex)
        {
            if (node->isChildValid(childIndex) == false)
                continue ;
            Node *child = nodeAllocator.getNode(node->_children[childIndex]);
            if (child->isInternal())
            {
                cleanupQueue.push(child);
            }
            else if (child->_curNumberOfRectangles == 0)
            {
                ++numberOfEmptyChildren;
            }
        }

        // If all the children were empty leaves, remove them and 
        // make this node the new empty leaf.
        if (numberOfEmptyChildren == NUMBER_OF_CHILDREN)
        {
            for (u32 childIndex = 0;
                childIndex < NUMBER_OF_CHILDREN;
                ++childIndex)
            {
                Node *child = nodeAllocator.getNode(node->_children[childIndex]);
                leafHashAllocator.clearLeafHash(child->_leafHashIndex);
                NodeInfo nodeInfo = { child, node->_children[childIndex] };
                nodeAllocator.deleteNode(nodeInfo);
                node->setChildInvalid(childIndex);
            }
            ASSERT(node->_curNumberOfRectangles == 0);
        }
    }
}

void Node::subdivide(NodeAllocator &nodeAllocator, NodeOrientation orientation, u32 curDepth)
{
    r32 xoffset;
    r32 yoffset;
    xoffset = (orientation == horizontal ? _nodeBound.topLeftX + _nodeBound.width / 2.0f : _nodeBound.topLeftX);
    yoffset = (orientation == horizontal ? _nodeBound.topLeftY : _nodeBound.topLeftY + _nodeBound.height / 2.0f);

    // TODO(david): hold array of references to ractangles
    // so that we dont have to pull the rectangles again
    array<Rec*, NODE_LIMIT> recs;
    array<u32, NODE_LIMIT> recIndices;
    u32 recsSize = 0;
    for (u32 i = 0;
            i < NODE_LIMIT;
            ++i)
    {
        ASSERT(_leafHashIndex < leafHashAllocator._leafHashes.size());
        u32 recIndex = leafHashAllocator._leafHashes[_leafHashIndex].recIndices[i];
        if (recIndex == EMPTY_HASH_SLOT) continue ;
        recIndices[recsSize] = recIndex;
        recs[recsSize++] = &rectangles[recIndex];
    }

    // k-d tree, find average x or y offset depending on the orientation of the node
    // xoffset = (orientation == horizontal ? 0.0f : _nodeBound.topLeftX);
    // yoffset = (orientation == horizontal ? _nodeBound.topLeftY: 0.0f);
    // r32 sumX = 0.0f;
    // r32 sumY = 0.0f;
    // for (Rec *rec : recs)
    // {
    //     sumX += rec->topLeftX + rec->width / 2.0f;
    //     sumY += rec->topLeftY + rec->height / 2.0f;
    // }

    // if (orientation == horizontal)
    // {
    //     xoffset = sumX / (r32)recsSize;
    //     if (xoffset < _nodeBound.topLeftX || xoffset > _nodeBound.topLeftX + _nodeBound.width)
    //     {
    //         xoffset = _nodeBound.topLeftX + _nodeBound.width / 2.0f;
    //     }
    // }
    // else
    // {
    //     yoffset = sumY / (r32)recsSize;
    //     if (yoffset < _nodeBound.topLeftY || yoffset > _nodeBound.topLeftY + _nodeBound.height)
    //     {
    //         yoffset = _nodeBound.topLeftY + _nodeBound.height / 2.0f;
    //     }
    // }
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
         iteration < recsSize;
         ++iteration)
    {
        // ASSERT(recIndex < rectangles.size());
        for (u32 childIndex = 0;
             childIndex < NUMBER_OF_CHILDREN;
             ++childIndex)
        {
            if (childBounds[childIndex].doesRecIntersect(*recs[iteration]))
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
                childNode->insert(recIndices[iteration], nodeAllocator, *recs[iteration], orientation == horizontal ? vertical : horizontal, curDepth + 1);
            }
        }
    }

    leafHashAllocator.clearLeafHash(_leafHashIndex);
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
