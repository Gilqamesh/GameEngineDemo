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

/**
 * 608 bits = 76 bytes
 */
struct Node
{
    array<u32, NODE_LIMIT> _rectangleIndices;

    /**
     * 0 - NW
     * 1 - NE
     * 2 - SW
     * 3 - SE
     */
    array<i32, NUMBER_OF_CHILDREN> _children;

    u32         _curNumberOfRectangles;
    Rectangle   _nodeBound;
    i32         _nodeIndex;
    
    NodeOrientation _orientation;

    Node();
    Node(const Node& that);
    Node& operator=(const Node& that);

    /**
     * Assumes that the rectangle can be inserted in the current bound
     */
    void insert(u32 rectangleIndex);

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
