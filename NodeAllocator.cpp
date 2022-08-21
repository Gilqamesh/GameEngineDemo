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
    _numberOfLeafs = 0;
    _maxAllocatedNodes = 0;
}

NodeInfo NodeAllocator::allocateNode(const Rec& nodeBound)
{
    NodeInfo result;

    ASSERT(_curAvailableIndex < NODE_POOL_SIZE);

    u32 nodeIndex = _curAvailableIndex++;
    if (_curAvailableIndex > _maxAllocatedNodes)
    {
        _maxAllocatedNodes = _curAvailableIndex;
    }
    _validNodes[nodeIndex] = 1;
    ASSERT(nodeIndex < _availableNodes.size());
    ASSERT(_availableNodes[nodeIndex] < _nodes.size());
    Node *node = &_nodes[_availableNodes[nodeIndex]];
    node->_curNumberOfRectangles = 0;
    node->_nodeBound = nodeBound;
    node->_leafHashIndex = UINT16_MAX;
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
    if (!(nodeIndex < _nodes.size()))
    {
        LOG(nodeIndex);
        ASSERT(false);
    }
    ASSERT(_validNodes[nodeIndex] == 1);
    return (&_nodes[nodeIndex]);
}

u32 NodeAllocator::allocatedNodes(void)
{
    return ((u32)_curAvailableIndex);
}

u32 NodeAllocator::maxAllocatedNodes(void)
{
    return (_maxAllocatedNodes);
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
    _numberOfLeafs = 0;
}
