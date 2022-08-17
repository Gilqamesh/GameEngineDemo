#ifndef NODEALLOCATOR_HPP
# define NODEALLOCATOR_HPP

# include "Node.hpp"
# include <map>
# include <unordered_map>

// must be a power of 2
# define NODE_POOL_SIZE 16384

struct NodePool
{
    array<Node, NODE_POOL_SIZE>  _nodes;
    array<u32, NODE_POOL_SIZE>   _availableNodes;
    i32                          _curAvailableIndex;

    typedef array<Node, NODE_POOL_SIZE>::iterator iterator;

    NodePool();
    NodePool(const NodePool &that);
    NodePool &operator=(const NodePool &that);

    Node *allocateNode(const Rectangle& nodeBound, u32 nodeIndex, NodeOrientation orientation);
    void deleteNode(Node *node);

    Node *getNode(u32 nodeIndex);

    iterator begin() { return (_nodes.begin()); }
    iterator end()   { return (_nodes.end());   }
};

class NodeIterator;

class NodeAllocator
{
map<u32, NodePool>  _nodePools;
vector<u32>         _deletedIndices;
u32                 _nextNodeIndex;
u32                 _allocatedNodes;
public:
    typedef map<u32, NodePool>::iterator node_pool_iterator;
    typedef NodeIterator                 iterator;

    NodeAllocator();

    Node *allocateNode(const Rectangle& nodeBound, NodeOrientation orientation);
    void deleteNode(Node *node);

    Node *getNode(u32 nodeIndex);

    u32 allocatedNodes() const;

    void clear();

    iterator begin();
    iterator end();
};

struct NodeIterator
{
typedef NodeAllocator::node_pool_iterator node_pool_iterator;
typedef NodePool::iterator                iterator;

node_pool_iterator  _nodePoolIt;
node_pool_iterator  _endPoolIt;
iterator            _nodeIt;

NodeIterator(node_pool_iterator nodePoolIt, node_pool_iterator endPoolIt, iterator nodeIt);
NodeIterator &operator++();

iterator operator->();
};

b32 operator!=(NodeIterator l, NodeIterator r);

#endif
