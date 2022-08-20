#ifndef NODE_HPP
# define NODE_HPP

# include "Rec.hpp"
# include <queue>
# define NUMBER_OF_CHILDREN 2
# define NODE_LIMIT 250

enum NodeOrientation
{
    horizontal,
    vertical
};

class NodeAllocator;

// __attribute__((packed)) - put it after struct to make struct nonpadded, but
// performance-wise it's worse
struct RecNode
{
    i32 nextNode; // -1 if end of the list, otherwise index to the next RecNode
    u16 recIndex; // index of the rectangle
};

struct RecNodeAllocator
{
    RecNodeAllocator() : firstFree(-1), numberOfNodes(0) {}

    vector<RecNode> recNodes;
    u32 numberOfNodes;

    inline i32 allocate(i32 nodeIndex, u16 recIndex)
    {
        if (!(firstFree < 0))
        {
            i32 result = firstFree;
            RecNode &recNode = recNodes[firstFree];
            firstFree = recNode.nextNode;
            recNode = { nodeIndex, recIndex };
            return (result);
        }
        i32 result = numberOfNodes++;

        if (result < recNodes.size())
        {
            recNodes[result] = { nodeIndex, recIndex };
        }
        else
        {
            recNodes.push_back({ nodeIndex, recIndex });
        }

        return (result);
    }

    inline RecNode getNode(u32 nodeIndex) const
    {
        ASSERT(nodeIndex < recNodes.size());
        return (recNodes[nodeIndex]);
    }

    inline void clear(void)
    {
        firstFree = -1;
        numberOfNodes = 0;
    }

    inline void delNode(i32 firstNodeIndex, i32 lastNodeIndex)
    {
        recNodes[lastNodeIndex].nextNode = firstFree;
        firstFree = firstNodeIndex;
    }

    i32 firstFree;
};

extern RecNodeAllocator recNodeAllocator;

struct Node
{
    i32 _firstRecNode;
    array<i32, NUMBER_OF_CHILDREN> _children;

    i32 _curNumberOfRectangles; // -1 if this node is not a leaf
    Rec _nodeBound;

    /**
     * Assumes that the rectangle can be inserted in the current bound
     */
    void insert(u32 rectangleIndex, NodeAllocator &nodeAllocator, Rec rec, NodeOrientation orientation);

    /**
     * Checks if all the rectangles are still in the node
     * Optionally inserts another rectangle
     */
    void reconstruct(i32 potentialRectangleIndex = -1);

    u32 checkIntersections(NodeAllocator &nodeAllocator) const;

    void subdivide(NodeAllocator &nodeAllocator, NodeOrientation orientation);

    void printBounds(i32 nodesPrinted, NodeAllocator &nodeAllocator) const;

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
