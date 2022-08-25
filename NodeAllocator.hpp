#ifndef NODEALLOCATOR_HPP
# define NODEALLOCATOR_HPP

# include "Node.hpp"

# define NODE_POOL_SIZE 20000
// # define NODE_POOL_SIZE 1000

struct NodeInfo
{
    array<Node*, NUMBER_OF_CHILDREN> address;
    array<i32, NUMBER_OF_CHILDREN> index;
};

struct NodeAllocator
{
    vector<Node>    _nodes;
    u32             _nextNodeIndex;
    u32             _maxAllocatedNodes;
    u32             _numberOfLeafs;
    vector<u32>     _freeNodeIndices;
    u32             _freeNodeSize;
    u32             _deletedNodes;

    NodeAllocator();

    NodeInfo allocateChildren(void);
    void deleteChildren(NodeInfo nodeInfo);

    Node *getNode(u32 nodeIndex);

    NodeInfo getChildren(u32 firstChildIndex);

    inline u32 size(void) const
    {
        return (_nextNodeIndex);
    }

    u32 allocatedNodes(void);
    u32 maxAllocatedNodes(void);
    u32 deletedNodes(void);

    void initializeNode(Node *node);
};

#endif
