#ifndef NODEALLOCATOR_HPP
# define NODEALLOCATOR_HPP

# include "Node.hpp"

# define NODE_POOL_SIZE 1500

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

    typedef array<Node, NODE_POOL_SIZE>::iterator iterator;

    NodeAllocator();

    NodeInfo allocateNode(const Rec& nodeBound);
    void deleteNode(NodeInfo nodeInfo);

    Node *getNode(u32 nodeIndex);

    u32 allocatedNodes(void);

    void clear();
};

#endif
