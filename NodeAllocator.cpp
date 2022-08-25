#include "NodeAllocator.hpp"

NodeAllocator::NodeAllocator()
    : _nodes(NODE_POOL_SIZE, Node()), _freeNodeIndices(NODE_POOL_SIZE, 0)
{
    _freeNodeSize = 0;
    _deletedNodes = 0;
    _nextNodeIndex = 0;
    _numberOfLeafs = 0;
    _maxAllocatedNodes = 0;
}

NodeInfo NodeAllocator::allocateChildren(void)
{
    NodeInfo result;

    if (_freeNodeSize > 0)
    {
        ASSERT((_freeNodeSize & (NUMBER_OF_CHILDREN - 1)) == 0);
        for (u32 childIndex = 0;
             childIndex < NUMBER_OF_CHILDREN;
             ++childIndex)
        {
            result.address[childIndex] = &_nodes[_freeNodeIndices[--_freeNodeSize]];
            result.index[childIndex] = _freeNodeIndices[_freeNodeSize];
        }
    }
    else
    {
        if (!(_nextNodeIndex + NUMBER_OF_CHILDREN < NODE_POOL_SIZE))
        {
            LOG("_nextNodeIndex: " << _nextNodeIndex);
            LOG("NODE_POOL_SIZE: " << NODE_POOL_SIZE);
            ASSERT(false);
        }

        for (u32 childIndex = 0;
             childIndex < NUMBER_OF_CHILDREN;
             ++childIndex)
        {
            u32 nodeIndex = _nextNodeIndex++;
            result.address[childIndex] = &_nodes[nodeIndex];
            result.index[childIndex] = nodeIndex;
        }
        if (_nextNodeIndex > _maxAllocatedNodes)
        {
            _maxAllocatedNodes = _nextNodeIndex;
        }
    }
    for (u32 childIndex = 0;
         childIndex < NUMBER_OF_CHILDREN;
         ++childIndex)
    {
        initializeNode(result.address[childIndex]);
    }

    return (result);
}

void NodeAllocator::deleteChildren(NodeInfo nodeInfo)
{
    ASSERT(_freeNodeSize < _freeNodeIndices.size() && _nextNodeIndex > 0);
    _deletedNodes += NUMBER_OF_CHILDREN;
    for (u32 childIndex = NUMBER_OF_CHILDREN;
         childIndex > 0;
         --childIndex)
    {
        _freeNodeIndices[_freeNodeSize++] = nodeInfo.index[childIndex - 1];
    }
}

Node *NodeAllocator::getNode(u32 nodeIndex)
{
    ASSERT(nodeIndex < _nodes.size());
    return (&_nodes[nodeIndex]);
}

NodeInfo NodeAllocator::getChildren(u32 firstChildIndex)
{
    ASSERT(firstChildIndex < _nodes.size() - 1);
    NodeInfo result;
    for (u32 childIndex = 0;
         childIndex < NUMBER_OF_CHILDREN;
         ++childIndex)
    {
        result.address[childIndex] = &_nodes[firstChildIndex + childIndex];
        result.index[childIndex] = firstChildIndex + childIndex;
    }
    return (result);
}

u32 NodeAllocator::allocatedNodes(void)
{
    return ((u32)_nextNodeIndex);
}

u32 NodeAllocator::maxAllocatedNodes(void)
{
    return (_maxAllocatedNodes);
}

u32 NodeAllocator::deletedNodes(void)
{
    return (_deletedNodes);
}

void NodeAllocator::initializeNode(Node *node)
{
    node->_firstChild = -1;
    node->_curNumberOfRectangles = 0;
}
