#ifndef NODEALLOCATOR_HPP
# define NODEALLOCATOR_HPP

# include "Node.hpp"

# define NODE_POOL_SIZE 10000

struct NodeInfo
{
    Node *address;
    i32  index;
};

struct NodeAllocator
{
    array<Node, NODE_POOL_SIZE>                             _nodes;
    array<u32, NODE_POOL_SIZE>                              _availableNodes;
    array<u8, NODE_POOL_SIZE>                               _validNodes;
    i32                                                     _curAvailableIndex;
    u32                                                     _maxAllocatedNodes;
    u32                                                     _numberOfLeafs;

    typedef array<Node, NODE_POOL_SIZE>::iterator iterator;

    NodeAllocator();

    NodeInfo allocateNode(const Rec& nodeBound);
    void deleteNode(NodeInfo nodeInfo);

    Node *getNode(u32 nodeIndex);

    u32 allocatedNodes(void);
    u32 maxAllocatedNodes(void);

    void clear();
};

#endif
