#ifndef NODE_HPP
# define NODE_HPP

# include "Rec.hpp"
# include <queue>
# include <ctime>
# define NUMBER_OF_CHILDREN 2
// must be a power of 2
# define NODE_LIMIT 128

extern vector<Rec> rectangles;

enum NodeOrientation
{
    horizontal,
    vertical
};

class NodeAllocator;

struct RecInfo
{
    u32 index;
    Rec rec;
};

// power of 2 > NUMBER_OF_INSERTIONS
// #define EMPTY_HASH_SLOT UINT32_MAX
#define EMPTY_HASH_SLOT UINT16_MAX
struct LeafHash
{
    LeafHash()
    {
        clear();
    }

    LeafHash(const LeafHash& that)
    {
        *this = that;
    }

    LeafHash &operator=(const LeafHash& that)
    {
        if (this != &that)
        {
            for (u32 iteration = 0;
             iteration < NODE_LIMIT;
             ++iteration)
            {
                _recIndices[iteration] = that._recIndices[iteration];
            }
        }

        return (*this);
    }

    u16 _recIndices[NODE_LIMIT];

    inline void clear(void)
    {
        for (u32 i = 0;
             i < NODE_LIMIT;
             ++i)
        {
            _recIndices[i] = EMPTY_HASH_SLOT;
        }
    }

    inline b32 insert(u32 recIndex)
    {
        ASSERT(recIndex < NUMBER_OF_INSERTIONS);
        // TODO(david): better hashing function
        u32 hashValue = (recIndex) & (NODE_LIMIT - 1);
        ASSERT(hashValue < NODE_LIMIT);

        for (u32 i = hashValue;
             i < NODE_LIMIT;
             ++i)
        {
            if (_recIndices[i] == recIndex)
            {
                return (false);
            }
            if (_recIndices[i] == EMPTY_HASH_SLOT)
            {
                _recIndices[i] = recIndex;
                return (true);
            }
        }

        // if there is no empty hash slot left from the hashValue
        for (u32 i = 0;
             i < hashValue;
             ++i)
        {
            if (_recIndices[i] == recIndex)
            {
                return (false);
            }
            if (_recIndices[i] == EMPTY_HASH_SLOT)
            {
                _recIndices[i] = recIndex;
                return (true);
            }
        }
        LOG(recIndex);
        ASSERT(false);

        return (false);
    }

    inline b32 erase(u32 recIndex)
    {
        ASSERT(recIndex < NUMBER_OF_INSERTIONS);
        u32 hashValue = (recIndex) & (NODE_LIMIT - 1);
        ASSERT(hashValue < NODE_LIMIT);
        for (u32 i = hashValue;
             i < NODE_LIMIT;
             ++i)
        {
            if (_recIndices[i] == recIndex)
            {
                _recIndices[i] = EMPTY_HASH_SLOT;
                return (true);
            }
        }

        for (u32 i = 0;
             i < hashValue;
             ++i)
        {
            if (_recIndices[i] == recIndex)
            {
                _recIndices[i] = EMPTY_HASH_SLOT;
                return (true);
            }
        }

        LOG(recIndex);
        ASSERT(false);
        
        return (false);
    }

    inline vector<RecInfo> getRecInfos(void)
    {
        vector<RecInfo> result;

        for (u32 i = 0;
             i < NODE_LIMIT;
             ++i)
        {
            if (_recIndices[i] != EMPTY_HASH_SLOT)
            {
                result.push_back({ _recIndices[i], rectangles[_recIndices[i]] });
            }
        }

        return (result);
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
        }
        else
        {
            result = _leafHashes.size();
            _leafHashes.push_back(LeafHash());
        }

        ASSERT(result < 10000); // arbitrary limit

        return (result);
    }

    /**
     * Inserts a rectangle into the LeafHash
     */
    inline void insert(u32 recIndex, u16 leafHashIndex)
    {
        if (!(leafHashIndex < _leafHashes.size()))
        {
            LOG(leafHashIndex << " " << _leafHashes.size() << " " << recIndex);
            ASSERT(false);
        }
        b32 result = _leafHashes[leafHashIndex].insert(recIndex);
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
     * Removes the LeafHash for later use
     */
    inline void eraseLeafHash(u16 leafHashIndex)
    {
        ASSERT(leafHashIndex < _leafHashes.size());

        _leafHashes[leafHashIndex].clear();
        _available.push_back(leafHashIndex);
        ++_deletionCount;
    }

    /**
     * Clears the leaf hash so that it wont store any recs
     */
    inline void clearLeafHash(u16 leafHashIndex)
    {
        ASSERT(leafHashIndex < _leafHashes.size());
        _leafHashes[leafHashIndex].clear();
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

    /**
     * Pulls and copies rectangles into memory for the hash
     */
    inline vector<RecInfo> getRecInfos(u16 leafHashIndex)
    {
        if (!(leafHashIndex < _leafHashes.size()))
        {
            LOG(leafHashIndex << " " << _leafHashes.size());
            ASSERT(false);
        }
        return (_leafHashes[leafHashIndex].getRecInfos());
    }
};

extern LeafHashAllocator leafHashAllocator;

struct Node
{
    i16 _leafHashIndex; // -1 if does not have a LeafHash
    array<i32, NUMBER_OF_CHILDREN> _children;

    i32 _curNumberOfRectangles; // -1 if this node is not a leaf
    // TODO(david): dont have to store these as it can be computed by the orientation
    Rec _nodeBound;

    /**
     * Assumes that the rectangle first the node's bound
     */
    void insert(u32 recIndex, NodeAllocator &nodeAllocator, Rec rec, NodeOrientation orientation,
        u32 curDepth);

    u32 update(NodeAllocator &nodeAllocator, u32 iterationNumber);

    void deferredCleanup(NodeAllocator &nodeAllocator);

    void subdivide(NodeAllocator &nodeAllocator, NodeOrientation orientation, u32 curDepth);

    void printBounds(i32 nodesPrinted, NodeAllocator &nodeAllocator) const;

    void logInfo(ostream &os, NodeAllocator &nodeAllocator, i32 firstNodeIndex, u32 callIndex);

    inline b32 isChildValid(u32 childIndex) const
    {
        return (!(_children[childIndex] < 0));
    }
    inline void setChildInvalid(u32 childIndex)
    {
        _children[childIndex] = -1;
    }

    inline b32 isBranch(void) const
    {
        return (_curNumberOfRectangles < 0);
    }

    inline b32 isLeaf(void) const
    {
        return (isBranch() == false);
    }

    inline b32 isEmpty(void) const
    {
        return (_curNumberOfRectangles == 0);
    }

    inline void setBranch(void)
    {
        _curNumberOfRectangles = -1;
        ASSERT(hasLeafHash() == true);
        leafHashAllocator.eraseLeafHash(_leafHashIndex);
        _leafHashIndex = -1;
    }

    inline void setLeaf(void)
    {
        _curNumberOfRectangles = 0;
        if (hasLeafHash() == false)
        {
            _leafHashIndex = leafHashAllocator.allocateLeafHash();
        }
    }

    inline b32 hasLeafHash(void) const
    {
        return (!(_leafHashIndex < 0));
    }

    inline array<Rec, 2> getChildBounds(NodeOrientation orientation) const
    {
        r32 xoffset;
        r32 yoffset;
        xoffset = (orientation == horizontal ? _nodeBound.topLeftX + _nodeBound.width / 2.0f : _nodeBound.topLeftX);
        yoffset = (orientation == horizontal ? _nodeBound.topLeftY : _nodeBound.topLeftY + _nodeBound.height / 2.0f);

        /**
         * Uncomment for k-d tree, find average x or y offset depending on the orientation of the node
         */
        // xoffset = (orientation == horizontal ? 0.0f : _nodeBound.topLeftX);
        // yoffset = (orientation == horizontal ? _nodeBound.topLeftY: 0.0f);
        // r32 sumX = 0.0f;
        // r32 sumY = 0.0f;
        // for (Rec *rec : recs)
        // {
        //     sumX += rec->topLeftX + rec->width / 2.0f;
        //     sumY += rec->topLeftY + rec->height / 2.0f;
        // }

        // if (orientation == horizontal)
        // {
        //     xoffset = sumX / (r32)recsSize;
        //     if (xoffset < _nodeBound.topLeftX || xoffset > _nodeBound.topLeftX + _nodeBound.width)
        //     {
        //         xoffset = _nodeBound.topLeftX + _nodeBound.width / 2.0f;
        //     }
        // }
        // else
        // {
        //     yoffset = sumY / (r32)recsSize;
        //     if (yoffset < _nodeBound.topLeftY || yoffset > _nodeBound.topLeftY + _nodeBound.height)
        //     {
        //         yoffset = _nodeBound.topLeftY + _nodeBound.height / 2.0f;
        //     }
        // }

        xoffset -= _nodeBound.topLeftX;
        yoffset -= _nodeBound.topLeftY;

        if (!(xoffset < _nodeBound.width && !(xoffset < 0)))
        {
            LOG("xoffset: " << xoffset);
            LOG(_nodeBound.width);
            ASSERT(false);
        }
        if (!(yoffset < _nodeBound.height && !(yoffset < 0)))
        {
            LOG("yoffset: " << yoffset);
            LOG(_nodeBound.height);
            ASSERT(false);
        }
        array<Rec, 2> result = {
            Rec{ _nodeBound.topLeftX,
              _nodeBound.topLeftY,
              orientation == horizontal ? xoffset : _nodeBound.width,
              orientation == horizontal ? _nodeBound.height : yoffset },
            Rec{ _nodeBound.topLeftX + xoffset,
              _nodeBound.topLeftY + yoffset,
              orientation == horizontal ? xoffset : _nodeBound.width,
              orientation == horizontal ? _nodeBound.height : yoffset }
        };

        return (result);
    }
};

#endif
