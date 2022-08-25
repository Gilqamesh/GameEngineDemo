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

    if (_freeNodeSize)
    {
        ASSERT((_freeNodeSize & 1) == 0);
        result.address[0] = &_nodes[_freeNodeIndices[--_freeNodeSize]];
        result.index[0] = _freeNodeIndices[_freeNodeSize];
        result.address[1] = &_nodes[_freeNodeIndices[--_freeNodeSize]];
        result.index[1] = _freeNodeIndices[_freeNodeSize];
    }
    else
    {
        if (!(_nextNodeIndex < NODE_POOL_SIZE))
        {
            LOG("_nextNodeIndex: " << _nextNodeIndex);
            LOG("NODE_POOL_SIZE: " << NODE_POOL_SIZE);
            ASSERT(false);
        }

        u32 nodeIndex = _nextNodeIndex++;
        result.address[0] = &_nodes[nodeIndex];
        result.index[0] = nodeIndex;
        nodeIndex = _nextNodeIndex++;
        result.address[1] = &_nodes[nodeIndex];
        result.index[1] = nodeIndex;
        if (_nextNodeIndex > _maxAllocatedNodes)
        {
            _maxAllocatedNodes = _nextNodeIndex;
        }
    }
    initializeNode(result.address[0]);
    initializeNode(result.address[1]);

    return (result);
}

void NodeAllocator::deleteChildren(NodeInfo nodeInfo)
{
    ASSERT(_freeNodeSize < _freeNodeIndices.size() && _nextNodeIndex > 0);
    _deletedNodes += 2;
    _freeNodeIndices[_freeNodeSize++] = nodeInfo.index[1];
    _freeNodeIndices[_freeNodeSize++] = nodeInfo.index[0];
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
