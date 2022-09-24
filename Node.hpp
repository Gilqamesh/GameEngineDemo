#ifndef NODE_HPP
# define NODE_HPP

# include "Rec.hpp"
# include <queue>
# include <ctime>
// both of these must be a power of 2!
# define NUMBER_OF_CHILDREN 4
# define NODE_LIMIT 256
# define HARD_NODE_LIMIT 512

struct Tree;

struct RecInfo
{
    u32 index;
    Rec rec;
};

struct NodeList
{
    u32 index; // rec index
    i32 next; // -1 if no next node
};

struct RecInfos
{
    RecInfo recs[HARD_NODE_LIMIT];
    u32 size;
};

struct NodeListAllocator
{
    NodeListAllocator();

    vector<NodeList> _nodeLists;
    i32 _freeList; // -1 if no available NodeList
    u32 _curIndex;
    u32 _deletionCount;

    /**
     * Returns new child
     */
    i32 insert(i32 prevNode, u32 index)
    {
        i32 result;
        if (!(_freeList < 0))
        {
            result = _freeList;
            _freeList = _nodeLists[_freeList].next;
        }
        else
        {
            result = _curIndex++;
            if (!(result < _nodeLists.size()))
            {
                _nodeLists.push_back(NodeList());
            }
        }
        _nodeLists[result].next = prevNode;
        _nodeLists[result].index = index;

        return (result);
    }

    void clear()
    {
        // _deletionCount = 0;
        _curIndex = 0;
        _freeList = -1;
    }

    void eraseList(i32 beginNode)
    {
        // find end node
        i32 beginIndex = beginNode;
        while (beginNode != -1)
        {
            ++_deletionCount;
            if (_nodeLists[beginNode].next == -1)
                break ;
            beginNode =_nodeLists[beginNode].next;
        }
        _nodeLists[beginNode].next = _freeList;
        _freeList = beginIndex;
    }

    inline u32 getDeletionCount(void) const
    {
        return (_deletionCount);
    }

    RecInfos getRecInfos(i32 beginIndex, Tree *tree);
};

struct Node;

struct NodeLeaf
{
    AABB bound;
    Node *node;
};

// __attribute__ ((__packed__))
struct  Node
{
    // i16 _leafHashIndex; // -1 if does not have a LeafHash
    // array<i16, NUMBER_OF_CHILDREN> _children; // -1 is child does not exist
    // can compress further by using 1 i32 for leafhashindex and first child
    // if this node is a leaf it points to the leafhash
    // if this node is a branch it points to the first child -> no invalid child
    i32 _firstChild;

    i16 _curNumberOfRectangles; // -1 if this node is not a leaf

    /**
     * Assumes that the rectangle first the node's bound
     */
    void insert(u32 recIndex, Rec rec, AABB curBound, Tree *tree);

    queue<NodeLeaf> getLeafs(AABB curBound, Tree *tree); 

    u32 update(AABB bound, Tree *tree);

    void deferredCleanup(Tree *tree);

    void subdivide(AABB curBound, Tree *tree);

    void printBounds(i32 nodesPrinted, Tree *tree) const;

    inline b32 isBranch(void) const
    {
        return (_curNumberOfRectangles < 0);
    }

    inline b32 isLeaf(void) const
    {
        return (!(_curNumberOfRectangles < 0));
    }

    inline b32 isEmpty(void) const
    {
        return (_curNumberOfRectangles == 0);
    }

    inline b32 hasLeafHash(void) const
    {
        return (_curNumberOfRectangles >= 0 && _firstChild >= 0);
    }

    inline b32 hasChildren(void) const
    {
        return (!(_firstChild < 0));
    }

    inline array<AABB, NUMBER_OF_CHILDREN> getChildBounds(AABB curBound) const
    {
        u16 xoffset = curBound.w >> 1;
        u16 yoffset = curBound.w >> 1;

        ASSERT(xoffset < curBound.w);
        ASSERT(yoffset < curBound.h);

        array<AABB, NUMBER_OF_CHILDREN> result;
        for (u32 childIndex = 0;
             childIndex < NUMBER_OF_CHILDREN;
             ++childIndex)
        {
            result[childIndex] = {
                static_cast<u16>(curBound.x + ((childIndex & 1) == 0 ? 0 : xoffset)), // alternates every time
                static_cast<u16>(curBound.y + ((childIndex & 2) == 0 ? 0 : yoffset)), // alternates every second time
                xoffset,
                yoffset
            };
        }

        return (result);
    }
};

#endif
