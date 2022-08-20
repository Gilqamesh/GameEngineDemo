#ifndef NODE_HPP
# define NODE_HPP

# include "Rectangle.hpp"
# define NUMBER_OF_CHILDREN 2
# define NODE_LIMIT 40

enum NodeOrientation
{
    horizontal,
    vertical
};

class NodeAllocator;

/**
 * 608 bits = 76 bytes
 */
struct Node
{
    array<u32, NODE_LIMIT> _rectangleIndices;
    array<i32, NUMBER_OF_CHILDREN> _children;

    u32         _curNumberOfRectangles;
    Rec   _nodeBound;
    i32         _nodeIndex;
    i32         _parentNodeIndex;
    b32         _isLeaf;
    
    NodeOrientation _orientation;

    /**
     * Assumes that the rectangle can be inserted in the current bound
     */
    void insert(u32 rectangleIndex);

    /**
     * Checks if all the rectangles are still in the node
     * Optionally inserts another rectangle
     */
    void reconstruct(i32 potentialRectangleIndex = -1);

    u32 checkIntersections(void) const;

    void subdivide(void);

    void printBounds(i32 nodesPrinted) const;

    inline b32 isChildValid(u32 childIndex) const
    {
        return (_children[childIndex] >= 0);
    }
    inline void setChildInvalid(u32 childIndex)
    {
        _children[childIndex] = -1;
    }
};

#endif
