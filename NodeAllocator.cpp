#include "NodeAllocator.hpp"

Rectangle screenBound = { 0.0f, 0.0f, 1600.0f, 900.0f };

NodePool::NodePool()
    : _nodes{}
{
    for (u32 iteration = 0;
         iteration < NODE_POOL_SIZE;
         ++iteration)
    {
        _availableNodes[iteration] = iteration;
    }
    _curAvailableIndex = 0;
}

NodePool::NodePool(const NodePool &that)
{
    *this = that;
}

NodePool &NodePool::operator=(const NodePool &that)
{
    if (this != &that)
    {
        for (u32 iteration = 0;
             iteration < NODE_POOL_SIZE;
             ++iteration)
        {
            _nodes[iteration] = that._nodes[iteration];
            _availableNodes[iteration] = that._availableNodes[iteration];
        }
        _curAvailableIndex = that._curAvailableIndex;
    }

    return (*this);
}

Node *NodePool::allocateNode(const Rectangle& nodeBound, u32 nodeIndex, NodeOrientation orientation)
{
    if (_curAvailableIndex == NODE_POOL_SIZE)
    {
        return (nullptr);
    }

    u32 localNodeIndex = _availableNodes[_curAvailableIndex++];
    Node *node = &_nodes[localNodeIndex];
    node->_nodeBound = nodeBound;
    node->_curNumberOfRectangles = 0;
    node->_nodeIndex = nodeIndex;
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

void NodePool::deleteNode(Node *node)
{
    // LOG("Deleted: " << nodeIndex);
    u32 localNodeIndex = node->_nodeIndex & NODE_POOL_SIZE;
    --_curAvailableIndex;
    ASSERT(!(_curAvailableIndex < 0));
    _nodes[_availableNodes[_curAvailableIndex]]._nodeIndex = -1;
    _availableNodes[_curAvailableIndex] = localNodeIndex;
}

Node *NodePool::getNode(u32 nodeIndex)
{
    u32 localNodeIndex = nodeIndex & (NODE_POOL_SIZE - 1);
    ASSERT(_nodes[localNodeIndex]._nodeIndex >= 0);

    return (&_nodes[localNodeIndex]);
}

NodeAllocator::NodeAllocator()
    : _nextNodeIndex(0), _allocatedNodes(0)
{
    _nodePools.insert({_nodePools.size(), NodePool()});
}

Node *NodeAllocator::allocateNode(const Rectangle& nodeBound, NodeOrientation orientation)
{
    ++_allocatedNodes;
    Node *node = nullptr;
    if (_deletedIndices.size())
    {
        u32 nodeIndex = _deletedIndices.back();
        _deletedIndices.pop_back();
        u32 nodePoolIndex = nodeIndex / NODE_POOL_SIZE;
        ASSERT(nodePoolIndex < _nodePools.size());
        node = _nodePools[nodePoolIndex].allocateNode(nodeBound, nodeIndex, orientation);
        ASSERT(node);
        return (node);
    }
    u32 nodeIndex = _nextNodeIndex++;

    node = (_nodePools.rbegin())->second.allocateNode(nodeBound, nodeIndex, orientation);
    if (node == nullptr)
    {
        _nodePools.insert({_nodePools.size(), NodePool()});
        node = (_nodePools.rbegin())->second.allocateNode(nodeBound, nodeIndex, orientation);
        ASSERT(node);
    }

    // LOG("Allocated node " << node->_nodeIndex);

    return (node);
}

void NodeAllocator::deleteNode(Node *node)
{
    --_allocatedNodes;
    _deletedIndices.push_back(node->_nodeIndex);
    u32 nodePoolIndex = node->_nodeIndex / NODE_POOL_SIZE;
    ASSERT(nodePoolIndex < _nodePools.size());

    _nodePools[nodePoolIndex].deleteNode(node);
}

Node *NodeAllocator::getNode(u32 nodeIndex)
{
    u32 nodePoolIndex = nodeIndex / NODE_POOL_SIZE;
    ASSERT(nodePoolIndex < _nodePools.size());

    return (_nodePools[nodePoolIndex].getNode(nodeIndex));
}

u32 NodeAllocator::allocatedNodes() const
{
    return (_allocatedNodes);
}

void NodeAllocator::clear()
{
    _nodePools.clear();
    _nodePools.insert({_nodePools.size(), NodePool()});
    _deletedIndices.clear();
    _nextNodeIndex = 0;
    _allocatedNodes = 0;
}

NodeIterator::NodeIterator(node_pool_iterator nodePoolIt, node_pool_iterator endPoolIt, iterator nodeIt)
        : _nodePoolIt(nodePoolIt), _endPoolIt(endPoolIt), _nodeIt(nodeIt)
{

}
    
NodeIterator &NodeIterator::operator++()
{
    ++_nodeIt;
    if (_nodeIt == _nodePoolIt->second.end())
    {
        ++_nodePoolIt;
        if (_nodePoolIt == _endPoolIt)
            return (*this);
        _nodeIt = _nodePoolIt->second.begin();
    }

    return (*this);
}

NodePool::iterator NodeIterator::operator->()
{
    return (_nodeIt);
}

NodeAllocator::iterator NodeAllocator::begin()
{
    return (NodeIterator(_nodePools.begin(), _nodePools.end(), _nodePools.begin()->second.begin()));
}

NodeAllocator::iterator NodeAllocator::end()
{
    return (NodeIterator(_nodePools.end(), _nodePools.end(), (_nodePools.rbegin())->second.end()));
}

b32 operator!=(NodeIterator l, NodeIterator r)
{
    return (l._nodePoolIt != r._nodePoolIt || l._nodeIt != r._nodeIt || l._endPoolIt != r._endPoolIt);
}
