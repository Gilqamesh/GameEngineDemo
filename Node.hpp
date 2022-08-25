#ifndef NODE_HPP
# define NODE_HPP

# include "Rec.hpp"
# include <queue>
# include <ctime>
// both of these must be a power of 2!
# define NUMBER_OF_CHILDREN 4
# define NODE_LIMIT 256

struct Tree;

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

    vector<RecInfo> getRecInfos(Tree *tree);
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
    inline vector<RecInfo> getRecInfos(u16 leafHashIndex, Tree *tree)
    {
        if (!(leafHashIndex < _leafHashes.size()))
        {
            LOG(leafHashIndex << " " << _leafHashes.size());
            ASSERT(false);
        }
        return (_leafHashes[leafHashIndex].getRecInfos(tree));
    }
};

struct NodeList
{
    u16 recIndex; // rec index
    i32 next; // -1 if no next node
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
    i32 insert(i32 prevNode, u16 recIndex)
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
        _nodeLists[result].recIndex = recIndex;

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

    vector<RecInfo> getRecInfos(i32 beginIndex, Tree *tree);
};

struct Node;

struct NodeLeaf
{
    AABB bound;
    Node *node;
};

// __attribute__ ((__packed__))
struct __attribute__ ((__packed__)) Node
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
        return (isBranch() == false);
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
