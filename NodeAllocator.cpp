#include "NodeAllocator.hpp"

Rectangle screenBound = { 0.0f, 0.0f, 1600.0f, 900.0f };


NodeAllocator::NodeAllocator()
{
    for (u32 iteration = 0;
         iteration < NODE_POOL_SIZE;
         ++iteration)
    {
        _availableNodes[iteration] = iteration;
    }
    _curAvailableIndex = 0;
}

Node *NodeAllocator::allocateNode(const Rectangle& nodeBound, NodeOrientation orientation)
{
    if (_curAvailableIndex == NODE_POOL_SIZE)
    {
        return (nullptr);
    }

    u32 nodeIndex = _curAvailableIndex++;
    Node *node = &_nodes[_availableNodes[nodeIndex]];
    node->_curNumberOfRectangles = 0;
    node->_nodeBound = nodeBound;
    node->_nodeIndex = nodeIndex;
    node->_isLeaf = true;
    node->_orientation = orientation;
    for (u32 iteration = 0;
         iteration < NUMBER_OF_CHILDREN;
         ++iteration)
    {
        node->setChildInvalid(iteration);
    }

    // LOG("Allocated: " << nodeIndex);

    return (node);
}

void NodeAllocator::deleteNode(Node *node)
{
    LOG("Deleted: " << node->_nodeIndex);
    --_curAvailableIndex;
    ASSERT(!(_curAvailableIndex < 0));
    _nodes[_availableNodes[_curAvailableIndex]]._nodeIndex = -1;
    _availableNodes[_curAvailableIndex] = node->_nodeIndex;
}

Node *NodeAllocator::getNode(u32 nodeIndex)
{
    return (&_nodes[nodeIndex]);
}

void NodeAllocator::clear()
{
    for (u32 iteration = 0;
         iteration < NODE_POOL_SIZE;
         ++iteration)
    {
        _availableNodes[iteration] = iteration;
    }
    _curAvailableIndex = 0;
}
