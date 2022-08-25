#ifndef NODEALLOCATOR_HPP
# define NODEALLOCATOR_HPP

# include "Node.hpp"

// # define NODE_POOL_SIZE 20000
# define NODE_POOL_SIZE 10000

struct NodeInfo
{
    Node *address;
    i32  index;
};

struct NodeAllocator
{
    array<Node, NODE_POOL_SIZE>      _nodes;
    array<u32, NODE_POOL_SIZE>       _validNodes;
    u32                              _nextNodeIndex;
    u32                              _maxAllocatedNodes;
    u32                              _numberOfLeafs;
    array<u32, NODE_POOL_SIZE>       _freeNodeIndices;
    u32                              _freeNodeSize;
    u32                              _deletedNodes;

    typedef array<Node, NODE_POOL_SIZE>::iterator iterator;

    NodeAllocator();

    NodeInfo allocateNode(Rec nodeBound);
    void deleteNode(NodeInfo nodeInfo);

    Node *getNode(u32 nodeIndex);

    inline b32 isValid(u32 nodeIndex) const
    {
        ASSERT(nodeIndex < _validNodes.size());
        return (_validNodes[nodeIndex] == 1);
    }

    inline u32 size(void) const
    {
        return (_nextNodeIndex);
    }

    u32 allocatedNodes(void);
    u32 maxAllocatedNodes(void);
    u32 deletedNodes(void);

    void clear(void);

    void initializeNode(Node *node, Rec nodeBound);
};

#endif
