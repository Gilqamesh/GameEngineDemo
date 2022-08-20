#include "NodeAllocator.hpp"

Rec screenBound = {0.0f, 0.0f, 1600.0f, 900.0f};

NodeAllocator::NodeAllocator()
    : _validNodes{}
{
    for (u32 iteration = 0;
         iteration < NODE_POOL_SIZE;
         ++iteration)
    {
        _availableNodes[iteration] = iteration;
    }
    _curAvailableIndex = 0;
}

NodeInfo NodeAllocator::allocateNode(const Rec& nodeBound)
{
    NodeInfo result;

    if (_curAvailableIndex == NODE_POOL_SIZE)
    {
        result.address = nullptr;
        result.index = -1;
        return (result);
    }

    u32 nodeIndex = _curAvailableIndex++;
    _validNodes[nodeIndex] = 1;
    ASSERT(nodeIndex < _availableNodes.size());
    ASSERT(_availableNodes[nodeIndex] < _nodes.size());
    Node *node = &_nodes[_availableNodes[nodeIndex]];
    node->_curNumberOfRectangles = 0;
    node->_nodeBound = nodeBound;
    node->_firstRecNode = -1;
    for (u32 iteration = 0;
         iteration < NUMBER_OF_CHILDREN;
         ++iteration)
    {
        node->setChildInvalid(iteration);
    }

    // LOG("Allocated: " << nodeIndex);

    result.address = node;
    result.index = nodeIndex;
    return (result);
}

void NodeAllocator::deleteNode(NodeInfo nodeInfo)
{
    --_curAvailableIndex;
    ASSERT(!(_curAvailableIndex < 0));
    _validNodes[nodeInfo.index] = 0;
    _availableNodes[_curAvailableIndex] = nodeInfo.index;
}

Node *NodeAllocator::getNode(u32 nodeIndex)
{
    return (&_nodes[nodeIndex]);
}

u32 NodeAllocator::allocatedNodes(void)
{
    return ((u32)_curAvailableIndex);
}

void NodeAllocator::clear()
{
    for (u32 iteration = 0;
         iteration < NODE_POOL_SIZE;
         ++iteration)
    {
        _availableNodes[iteration] = iteration;
        _validNodes[iteration] = 0;
    }
    _curAvailableIndex = 0;
}
