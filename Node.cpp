#include "Node.hpp"
#include "NodeAllocator.hpp"

extern vector<Rectangle> rectangles;

void Node::insert(u32 rectangleIndex, NodeAllocator &nodeAllocator)
{
    array<pair<Node*, u32>, 100> nodeQueue;
    u32 nodeQueueIndex = 0;
    nodeQueue[nodeQueueIndex].first = this;
    nodeQueue[nodeQueueIndex].second = rectangleIndex;
    ++nodeQueueIndex;
    while (nodeQueueIndex > 0)
    {
        pair<Node*, u32> nodePair = nodeQueue[--nodeQueueIndex];
        Node *node = nodePair.first;
        u32 insertedRecIndex = nodePair.second;
        if (node->_isLeaf == true)
        {
            if (node->_curNumberOfRectangles < NODE_LIMIT)
            {
                node->_rectangleIndices[node->_curNumberOfRectangles++] = insertedRecIndex;
                continue ;
            }
            subdivide(nodeQueue, nodeQueueIndex, node, nodeAllocator);
        }

        for (u32 iteration = 0;
            iteration < NUMBER_OF_CHILDREN;
            ++iteration)
        {
            if (node->isChildValid(iteration))
            {
                Node *child = nodeAllocator.getNode(node->_children[iteration]);
                if (child->_nodeBound.doesRecIntersect(rectangles[insertedRecIndex]))
                {
                    nodeQueue[nodeQueueIndex].first = child;
                    nodeQueue[nodeQueueIndex].second = insertedRecIndex;
                    ++nodeQueueIndex;
                }
            }
        }
    }
}

u32 Node::checkIntersections(NodeAllocator &nodeAllocator) const
{
    u32 nOfIntersections = 0;

    for (auto it = nodeAllocator.begin();
         it != nodeAllocator.end();
         ++it)
    {
        if (it->_nodeIndex >= 0)
        {
            u32 curNumberOfRectangles = it->_curNumberOfRectangles;
            if (it->_isLeaf == false)
            {
                curNumberOfRectangles = 0;
            }
            for (u32 i = 0; i < curNumberOfRectangles; ++i)
            {
                for (u32 j = i + 1; j < curNumberOfRectangles; ++j)
                {
                    auto& rectangleIndices = it->_rectangleIndices;
                    if (rectangles[rectangleIndices[i]].doesRecIntersect(rectangles[rectangleIndices[j]]))
                    {
                        ++nOfIntersections;
                    }
                }
            }
        }
    }

    return (nOfIntersections);
}

void Node::subdivide(array<pair<Node*, u32>, 100>& nodeQueue, u32 &nodeQueueIndex, Node *node, NodeAllocator &nodeAllocator)
{
    node->_isLeaf = false;

    r32 xoffset = 0.0f;
    r32 yoffset = 0.0f;

    xoffset = node->_nodeBound.width / 2.0f;
    yoffset = node->_nodeBound.height / 2.0f;

    // for (u32 iteration = 0;
    //      iteration < node->_curNumberOfRectangles;
    //      ++iteration)
    // {
    //     u32 rectangleIndex = node->_rectangleIndices[iteration];
    //     const Rectangle &rectangle = rectangles[rectangleIndex];

    //     xoffset = (xoffset * (r32)iteration + rectangle.topLeftX + rectangle.width / 2.0f) / (r32)(iteration + 1);
    //     yoffset = (xoffset * (r32)iteration + rectangle.topLeftY + rectangle.height / 2.0f) / (r32)(iteration + 1);
    // }
    // xoffset -= node->_nodeBound.topLeftX;
    // yoffset -= node->_nodeBound.topLeftY;
    // if (node->_nodeBound.isPointInRect(xoffset, yoffset) == false)
    // {
    //     xoffset = node->_nodeBound.width / 2.0f;
    //     yoffset = node->_nodeBound.height / 2.0f;
    // }

    Rectangle nodeBound = node->_nodeBound;

    array<Rectangle, NUMBER_OF_CHILDREN> childBounds = {
        Rectangle{ nodeBound.topLeftX,
                   nodeBound.topLeftY,
                   node->_orientation == horizontal ? xoffset : nodeBound.width,
                   node->_orientation == horizontal ? nodeBound.height : yoffset },
        Rectangle{ nodeBound.topLeftX + (node->_orientation == horizontal ? xoffset : 0.0f),
                   nodeBound.topLeftY + (node->_orientation == horizontal ? 0.0f : yoffset),
                   node->_orientation == horizontal ? xoffset : nodeBound.width,
                   node->_orientation == horizontal ? nodeBound.height : yoffset}
    };
    // array<Rectangle, NUMBER_OF_CHILDREN> childBounds = {
    //     Rectangle{ node->_nodeBound.topLeftX,
    //                node->_nodeBound.topLeftY,
    //                node->_orientation == horizontal ? xoffset : node->_nodeBound.width,
    //                node->_orientation == horizontal ? node->_nodeBound.height : yoffset },
    //     Rectangle{ node->_nodeBound.topLeftX + (node->_orientation == horizontal ? xoffset : 0.0f),
    //                node->_nodeBound.topLeftY + (node->_orientation == horizontal ? 0.0f : yoffset),
    //                node->_orientation == horizontal ? xoffset : node->_nodeBound.width,
    //                node->_orientation == horizontal ? node->_nodeBound.height : yoffset}
    // };

    for (u32 iteration = 0;
         iteration < node->_curNumberOfRectangles;
         ++iteration)
    {
        u32 rectangleIndex = node->_rectangleIndices[iteration];
        const Rectangle &rectangle = rectangles[rectangleIndex];
        for (u32 childIndex = 0;
             childIndex < NUMBER_OF_CHILDREN;
             ++childIndex)
        {
            if (childBounds[childIndex].doesRecIntersect(rectangle))
            {
                Node *childNode;
                if (node->isChildValid(childIndex) == false)
                {
                    childNode = nodeAllocator.allocateNode(childBounds[childIndex], node->_orientation == horizontal ? vertical : horizontal);
                    ASSERT(childNode);
                    node->_children[childIndex] = childNode->_nodeIndex;
                }
                else
                {
                    childNode = nodeAllocator.getNode(node->_children[childIndex]);
                    ASSERT(childNode);
                }
                nodeQueue[nodeQueueIndex].first = childNode;
                nodeQueue[nodeQueueIndex].second = rectangleIndex;
                ++nodeQueueIndex;
            }
        }
    }
}

void Node::printBounds(i32 nodesPrinted, NodeAllocator &nodeAllocator) const
{
    for (auto it = nodeAllocator.begin();
         it != nodeAllocator.end() && nodesPrinted > 0;
         ++it, --nodesPrinted)
    {
        if (it->_nodeIndex >= 0)
        {
            LOG("node index: " << it->_nodeIndex << ", bound: " << it->_nodeBound);
        }
    }
}
