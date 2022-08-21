#ifndef NODE_HPP
# define NODE_HPP

# include "Rec.hpp"
# include <queue>
# include <ctime>
# define NUMBER_OF_CHILDREN 2
// must be a power of 2
# define NODE_LIMIT 256

enum NodeOrientation
{
    horizontal,
    vertical
};

class NodeAllocator;

#define EMPTY_HASH_SLOT UINT32_MAX
struct LeafHash
{
    LeafHash()
    {
        clear();
    }

    u32 recIndices[NODE_LIMIT];

    inline void clear(void)
    {
        for (u32 i = 0;
             i < NODE_LIMIT;
             ++i)
        {
            recIndices[i] = EMPTY_HASH_SLOT;
        }
    }

    inline void insert(u32 recIndex)
    {
        u32 hashValue = recIndex * 101 & (NODE_LIMIT - 1);
        for (u32 i = hashValue;
             i < NODE_LIMIT;
             ++i)
        {
            if (recIndices[i] == EMPTY_HASH_SLOT)
            {
                recIndices[i] = recIndex;
                return ;
            }
        }

        // if there is no empty hash slot left from the hashValue
        for (u32 i = 0;
             i < hashValue;
             ++i)
        {
            if (recIndices[i] == EMPTY_HASH_SLOT)
            {
                recIndices[i] = recIndex;
                return ;
            }
        }
        LOG(recIndex);
        ASSERT(false);
    }

    inline b32 erase(u32 recIndex)
    {
        u32 hashValue = recIndex * 101 & (NODE_LIMIT - 1);
        for (u32 i = hashValue;
             i < NODE_LIMIT;
             ++i)
        {
            if (recIndices[i] == recIndex)
            {
                recIndices[i] = EMPTY_HASH_SLOT;
                return (true);
            }
        }

        // if there is no empty hash slot left from the hashValue
        for (u32 i = 0;
             i < hashValue;
             ++i)
        {
            if (recIndices[i] == recIndex)
            {
                recIndices[i] = EMPTY_HASH_SLOT;
                return (true);
            }
        }
        
        return (false);
    }
};

struct LeafHashAllocator
{
    LeafHashAllocator() : _deletionCount(0) {}

    vector<LeafHash> _leafHashes;
    vector<u16>      _available;
    u32              _deletionCount;

    /**
     * Allocates a LeafHash and returns its index
     */
    inline u16 allocateLeafHash(void)
    {
        u16 result;
        if (_available.size())
        {
            result = _available.back();
            _available.pop_back();
            return (result);
        }
        result = _leafHashes.size();
        _leafHashes.push_back(LeafHash());

        return (result);
    }

    /**
     * Inserts a rectangle into the LeafHash
     */
    inline void insert(u32 recIndex, u16 leafHashIndex)
    {
        ASSERT(leafHashIndex < _leafHashes.size());
        _leafHashes[leafHashIndex].insert(recIndex);
    }

    /**
     * Erases a rectangle from the LeafHash
     */
    inline b32 erase(u32 recIndex, u16 leafHashIndex)
    {
        ASSERT(leafHashIndex < _leafHashes.size());
        return (_leafHashes[leafHashIndex].erase(recIndex));
    }

    /**
     * Clears the LeafHash for later use
     */
    inline void clearLeafHash(u16 leafHashIndex)
    {
        ASSERT(leafHashIndex < _leafHashes.size());
        _leafHashes[leafHashIndex].clear();
        _available.push_back(leafHashIndex);
        ++_deletionCount;
    }
    
    inline void clear(void)
    {
        _leafHashes.clear();
        _available.clear();
        _deletionCount = 0;
    }

    inline u32 getDeletionCount() const
    {
        return (_deletionCount);
    }
};

extern LeafHashAllocator leafHashAllocator;

struct Node
{
    u16 _leafHashIndex;
    array<i32, NUMBER_OF_CHILDREN> _children;

    i32 _curNumberOfRectangles; // -1 if this node is not a leaf
    Rec _nodeBound;

    /**
     * Assumes that the rectangle first the node's bound
     */
    void insert(u32 rectangleIndex, NodeAllocator &nodeAllocator, Rec rec, NodeOrientation orientation,
        u32 curDepth);

    /**
     * Assumes that the rectangle first the node's bound
     */
    void erase(u32 rectangleIndex, NodeAllocator &nodeAllocator, Rec rec);

    u32 update(NodeAllocator &nodeAllocator);

    void deferredCleanup(NodeAllocator &nodeAllocator);

    void subdivide(NodeAllocator &nodeAllocator, NodeOrientation orientation, u32 curDepth);

    void printBounds(i32 nodesPrinted, NodeAllocator &nodeAllocator) const;

    inline b32 isChildValid(u32 childIndex) const
    {
        return (_children[childIndex] >= 0);
    }
    inline void setChildInvalid(u32 childIndex)
    {
        _children[childIndex] = -1;
    }

    inline b32 isInternal(void) const
    {
        return (_curNumberOfRectangles < 0);
    }

    inline void setInternal(void)
    {
        _curNumberOfRectangles = -1;
        _leafHashIndex = UINT16_MAX;
    }
};

#endif
