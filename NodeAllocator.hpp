#ifndef NODEALLOCATOR_HPP
# define NODEALLOCATOR_HPP

# include "Node.hpp"

# define NODE_POOL_SIZE 50000

struct NodeAllocator
{
    array<Node, NODE_POOL_SIZE>  _nodes;
    array<u32, NODE_POOL_SIZE>   _availableNodes;
    i32                          _curAvailableIndex;
    vector<Rec>            *_rectangles;

    typedef array<Node, NODE_POOL_SIZE>::iterator iterator;

    NodeAllocator();

    Node *allocateNode(const Rec& nodeBound, NodeOrientation orientation, i32 parentNodeIndex);
    void deleteNode(Node *node);

    Node *getNode(u32 nodeIndex);

    void clear();

    iterator begin() { return (_nodes.begin()); }
    iterator end()   { return (_nodes.end());   }
};

#endif
