#include "Node.hpp"
#include "NodeAllocator.hpp"

void Node::insert(u32 rectangleIndex)
{
    if (_isLeaf == true)
    {
        if (_curNumberOfRectangles < NODE_LIMIT)
        {
            _rectangleIndices[_curNumberOfRectangles++] = rectangleIndex;
            return ;
        }
        subdivide();
    }

    for (u32 iteration = 0;
         iteration < NUMBER_OF_CHILDREN;
         ++iteration)
    {
        if (isChildValid(iteration))
        {
            Node *node = _nodeAllocator->getNode(_children[iteration]);
            if (node->_nodeBound.doesRecIntersect((*_rectangles)[rectangleIndex]))
            {
                node->insert(rectangleIndex);
            }
        }
    }
}

u32 Node::checkIntersections(void) const
{
    u32 nOfIntersections = 0;

    for (auto it = _nodeAllocator->begin();
         it != _nodeAllocator->end();
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
                    if ((*_rectangles)[rectangleIndices[i]].doesRecIntersect((*_rectangles)[rectangleIndices[j]]))
                    {
                        ++nOfIntersections;
                    }
                }
            }
        }
    }

    return (nOfIntersections);
}

void Node::subdivide(void)
{
    _isLeaf = false;

    r32 xoffset = 0.0f;
    r32 yoffset = 0.0f;

    for (u32 iteration = 0;
         iteration < _curNumberOfRectangles;
         ++iteration)
    {
        u32 rectangleIndex = _rectangleIndices[iteration];
        const Rectangle &rectangle = (*_rectangles)[rectangleIndex];

        xoffset = (xoffset * (r32)iteration + rectangle.topLeftX + rectangle.width / 2.0f) / (r32)(iteration + 1);
        yoffset = (xoffset * (r32)iteration + rectangle.topLeftY + rectangle.height / 2.0f) / (r32)(iteration + 1);
    }
    xoffset -= _nodeBound.topLeftX;
    yoffset -= _nodeBound.topLeftY;
    if (_nodeBound.isPointInRect(xoffset, yoffset) == false)
    {
        xoffset = _nodeBound.width / 2.0f;
        yoffset = _nodeBound.height / 2.0f;
    }

    array<Rectangle, NUMBER_OF_CHILDREN> childBounds = {
        Rectangle{ _nodeBound.topLeftX,
                   _nodeBound.topLeftY,
                   _orientation == horizontal ? xoffset : _nodeBound.width,
                   _orientation == horizontal ? _nodeBound.height : yoffset },
        Rectangle{ _nodeBound.topLeftX + (_orientation == horizontal ? xoffset : 0.0f),
                   _nodeBound.topLeftY + (_orientation == horizontal ? 0.0f : yoffset),
                   _orientation == horizontal ? xoffset : _nodeBound.width,
                   _orientation == horizontal ? _nodeBound.height : yoffset}
    };

    b32 deleteThisNode = false;
    for (u32 iteration = 0;
         iteration < _curNumberOfRectangles;
         ++iteration)
    {
        u32 rectangleIndex = _rectangleIndices[iteration];
        const Rectangle &rectangle = (*_rectangles)[rectangleIndex];
        for (u32 childIndex = 0;
             childIndex < NUMBER_OF_CHILDREN;
             ++childIndex)
        {
            if (childBounds[childIndex].doesRecIntersect(rectangle))
            {
                Node *node;
                if (isChildValid(childIndex) == false)
                {
                    node = _nodeAllocator->allocateNode(childBounds[childIndex], _orientation == horizontal ? vertical : horizontal, _nodeIndex);
                    _children[childIndex] = node->_nodeIndex;
                }
                else
                {
                    node = _nodeAllocator->getNode(_children[childIndex]);
                }
                node->insert(rectangleIndex);
            }
        }
    }
}

void Node::printBounds(i32 nodesPrinted) const
{
    for (auto it = _nodeAllocator->begin();
         it != _nodeAllocator->end() && nodesPrinted > 0;
         ++it, --nodesPrinted)
    {
        if (it->_nodeIndex >= 0)
        {
            LOG("node index: " << it->_nodeIndex << ", bound: " << it->_nodeBound);
        }
    }
}
