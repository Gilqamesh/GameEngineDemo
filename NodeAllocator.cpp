#include "NodeAllocator.hpp"

Rec screenBound = {0.0f, 0.0f, 1600.0f, 900.0f};

NodeAllocator::NodeAllocator()
    : _validNodes{}, _freeNodeSize(0)
{
    _nextNodeIndex = 0;
    _numberOfLeafs = 0;
    _maxAllocatedNodes = 0;
}

NodeInfo NodeAllocator::allocateNode(Rec nodeBound)
{
    NodeInfo result;

    // if a free node is available, initializte it and return it
    if (_freeNodeSize)
    {
        --_freeNodeSize;
        result.address = &_nodes[_freeNodeIndices[_freeNodeSize]];
        result.index = _freeNodeIndices[_freeNodeSize];
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
        if (_nextNodeIndex > _maxAllocatedNodes)
        {
            _maxAllocatedNodes = _nextNodeIndex;
        }
        result.address = &_nodes[nodeIndex];
        result.index = nodeIndex;
    }
    initializeNode(result.address, nodeBound);

    _validNodes[result.index] = 1;

    return (result);
}

void NodeAllocator::deleteNode(NodeInfo nodeInfo)
{
    LOG("\nDeleting node ... " << nodeInfo.index);
    ASSERT(_freeNodeSize < _freeNodeIndices.size() && _nextNodeIndex > 0);
    _freeNodeIndices[_freeNodeSize++] = nodeInfo.index;
    _validNodes[nodeInfo.index] = 0;
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
    return ((u32)_nextNodeIndex);
}

u32 NodeAllocator::maxAllocatedNodes(void)
{
    return (_maxAllocatedNodes);
}

queue<Node *> NodeAllocator::getLeafQueue(void)
{
    queue<Node *> result;
    for (u32 nodeIndex = 0;
         nodeIndex < _nextNodeIndex;
         ++nodeIndex)
    {
        if (isValid(nodeIndex) == true &&
            _nodes[nodeIndex].isLeaf() == true)
        {
            result.push(&_nodes[nodeIndex]);
        }
    }

    return (result);
}

void NodeAllocator::clear()
{
    _nextNodeIndex = 0;
    _numberOfLeafs = 0;
    _freeNodeSize = 0;
}

void NodeAllocator::initializeNode(Node *node, Rec nodeBound)
{
    node->_leafHashIndex = -1;
    node->_curNumberOfRectangles = 0;
    for (u32 childIndex = 0;
         childIndex < NUMBER_OF_CHILDREN;
         ++childIndex)
    {
        node->setChildInvalid(childIndex);
    }
    node->_nodeBound = nodeBound;
}
