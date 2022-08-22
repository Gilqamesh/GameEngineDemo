#ifndef NODEALLOCATOR_HPP
# define NODEALLOCATOR_HPP

# include "Node.hpp"

# define NODE_POOL_SIZE 20000

struct NodeInfo
{
    Node *address;
    u32  index;
};

struct NodeAllocator
{
    array<Node, NODE_POOL_SIZE>      _nodes;
    array<u8, NODE_POOL_SIZE>        _validNodes;
    u32                              _nextNodeIndex;
    u32                              _maxAllocatedNodes;
    u32                              _numberOfLeafs;
    array<u32, NODE_POOL_SIZE>       _freeNodeIndices;
    u32                              _freeNodeSize;

    typedef array<Node, NODE_POOL_SIZE>::iterator iterator;

    NodeAllocator();

    NodeInfo allocateNode(Rec nodeBound);
    void deleteNode(NodeInfo nodeInfo);

    Node *getNode(u32 nodeIndex);

    u32 allocatedNodes(void);
    u32 maxAllocatedNodes(void);

    void clear();

    void initializeNode(Node *node, Rec nodeBound);
};

#endif
