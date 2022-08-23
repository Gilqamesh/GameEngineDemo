#include <iostream>
#include <random>
#include <ctime>
#include <algorithm>
#include <vector>
#include <cstddef>
#include <array>

using namespace std;

# define LOG(x) (cout << x << endl)
# define LINE() (LOG(__LINE__ << " " << __FILE__))

// # define NDEBUG

# ifndef NDEBUG
#  define ASSERT(x) {\
    if (!(x)){\
        LOG("!!!!!!!!!!!!!!!!!!!! " << #x << " !!!!!!!!!!!!!!!!!!!!");\
        LINE();\
        exit(1);\
    }\
}
# else
#  define ASSERT(x)
# endif

typedef int8_t  i8;
typedef int16_t i16;
typedef int32_t i32;
typedef int64_t i64;
typedef i32     b32;

typedef uint8_t  u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;

typedef float  r32;
typedef double r64;

#if 0
# define WINDOWS
#endif

#if defined(WINDOWS)
#include <Windows.h>
#endif

#define LOG(x) (cout << x << endl)

#define GRID_REC_LIMIT 128
#define DIVISION_PER_AXIS 100
#define NUMBER_OF_INSERTIONS 100000
// #define NUMBER_OF_INSERTIONS 32000

struct Rec
{
    r32 x;
    r32 y;
    r32 w;
    r32 h;

    inline b32 doesRecIntersect(Rec that) const
    {
        return (x < that.x + that.w && that.x < x + w &&
                y < that.y + that.h && that.y < y + h);
    }
};

Rec spaceBound = { 0.0f, 0.0f, 2048.0f, 1024.0f };

vector<Rec> rectangles;

ostream &operator<<(ostream &os, Rec rec)
{
    os << rec.x << " " << rec.y << " " << rec.w << " " << rec.h;

    return (os);
}

inline r32 getRand(r32 low, r32 high)
{
    static random_device dev;
    static mt19937 rng(dev());
    uniform_real_distribution<r32> dist(low, high);
    return (dist(rng));
}

struct Grid
{
    Grid() : firstRecNode(-1) {}

    i32 firstRecNode;
};

struct RecNode
{
    i32 nextNode; // -1 if end of the list, otherwise index to the next RecNode
    u32 recIndex; // index of the rectangle
};

struct RecNodeAllocator
{
    RecNodeAllocator() : freeList(-1), numberOfNodes(0) {}

    vector<RecNode> recNodes;
    u32 numberOfNodes;

    inline i32 allocate(i32 nodeIndex, u32 recIndex)
    {
        i32 result = numberOfNodes++;

        recNodes.push_back({ nodeIndex, recIndex });

        return (result);
    }

    inline RecNode getNode(u32 nodeIndex) const
    {
        ASSERT(nodeIndex < recNodes.size());
        return (recNodes[nodeIndex]);
    }

    i32 freeList; // TODO(david): implement
};

RecNodeAllocator recNodeAllocator;

struct GridSpace
{
    GridSpace(Rec bound)
        : grids(DIVISION_PER_AXIS * DIVISION_PER_AXIS, Grid()),
          bound(bound),
          curSwapIndex(0)
    {
    }

    vector<Grid> grids;
    Rec bound;
    u32 curSwapIndex;

    /**
     * @brief inserts rec into the grids, assumes that the rec can be inserted
     */
    void insert(u32 recIndex)
    {
        Rec rec = rectangles[recIndex];
        r32 gridWidth = (bound.x + bound.w) / DIVISION_PER_AXIS;
        r32 gridHeight = (bound.y + bound.h) / DIVISION_PER_AXIS;
        u32 startGridX = (rec.y < 0 ? 0 : rec.x / gridWidth);
        u32 startGridY = (rec.y < 0 ? 0 : rec.y / gridHeight);
        u32 endGridX = (rec.x + rec.w > bound.x + bound.w ? DIVISION_PER_AXIS - 1 : (rec.x + rec.w) / gridWidth);
        u32 endGridY = (rec.y + rec.h > bound.y + bound.h ? DIVISION_PER_AXIS - 1 : (rec.y + rec.h) / gridHeight);

        for (u32 row = startGridX;
             row <= endGridX;
             ++row)
        {
            for (u32 column = startGridY;
                 column <= endGridY;
                 ++column)
            {
                u32 gridIndex = row * DIVISION_PER_AXIS + column;
                if (!(gridIndex < DIVISION_PER_AXIS * DIVISION_PER_AXIS))
                {
                    LOG(row << " " << column);
                    LOG(rec);
                    ASSERT(false);
                }
                Grid &grid = grids[gridIndex];
                grid.firstRecNode = recNodeAllocator.allocate(grid.firstRecNode, recIndex);
            }
        }
    }

    void update()
    {
        r32 gridWidth = (bound.x + bound.w) / DIVISION_PER_AXIS;
        r32 gridHeight = (bound.y + bound.h) / DIVISION_PER_AXIS;
        for (u32 row = 0;
             row < DIVISION_PER_AXIS;
             ++row)
        {
            for (u32 column = 0;
                 column < DIVISION_PER_AXIS;
                 ++column)
            {
                u32 gridIndex = row * DIVISION_PER_AXIS + column;
                if (!(gridIndex < DIVISION_PER_AXIS * DIVISION_PER_AXIS))
                {
                    LOG(row << " " << column);
                    ASSERT(false);
                }
                Grid grid = grids[gridIndex];

                Rec gridBound = { column * gridWidth, row * gridHeight, gridWidth, gridHeight };
                i32 nodeIndex = grid.firstRecNode;
                while (!(nodeIndex < 0))
                {
                    RecNode recNode = recNodeAllocator.getNode(nodeIndex);
                    // delete the rectangle from the grid
                    if (rectangles[recNode.recIndex].doesRecIntersect(gridBound) == false)
                    {
                        // TODO(david): implement
                        // recNodeAllocator.delNode(nodeIndex);
                    }
                    nodeIndex = recNode.nextNode;
                }
            }
        }
    }

    u32 collisions()
    {
        u32 result = 0;
        for (u32 row = 0;
             row < DIVISION_PER_AXIS;
             ++row)
        {
            for (u32 column = 0;
                 column < DIVISION_PER_AXIS;
                 ++column)
            {
                u32 gridIndex = row * DIVISION_PER_AXIS + column;
                Grid &grid = grids[gridIndex];
                vector<u32> recIndices;
                i32 nodeIndex = grid.firstRecNode;
                while (!(nodeIndex < 0))
                {
                    RecNode recNode = recNodeAllocator.getNode(nodeIndex);
                    recIndices.push_back(recNode.recIndex);
                    nodeIndex = recNode.nextNode;
                }
                for (u32 i = 0;
                     i < recIndices.size();
                     ++i)
                {
                    for (u32 j = i + 1;
                         j < recIndices.size();
                         ++j)
                    {
                        if (rectangles[recIndices[i]].doesRecIntersect(rectangles[recIndices[j]]))
                        {
                            ++result;
                        }
                    }
                }
            }
        }

        return (result);
    }
};

#if 0
i32 WinMain(
    HINSTANCE instance,
    HINSTANCE previousInstance,
    LPSTR     commandLine,
    i32       showCommand)
#else
i32 main()
#endif
{
    #if defined (WINDOWS)
    LARGE_INTEGER PerfCountFrequencyResult;
    QueryPerformanceFrequency(&PerfCountFrequencyResult);
    u64 GlobalPerfCountFrequency = PerfCountFrequencyResult.QuadPart;
    #else
    u64 GlobalPerfCountFrequency = CLOCKS_PER_SEC;
    #endif

    for (u32 i = 0;
         i < NUMBER_OF_INSERTIONS;
         ++i)
    {
        rectangles.push_back( { getRand(spaceBound.x, spaceBound.x + spaceBound.w),
                                getRand(spaceBound.y, spaceBound.y + spaceBound.h),
                                getRand(10.0f, 10.1f), getRand(10.0f, 10.1f) } );
    }
    clock_t sortStart = clock();
    // sort(rectangles.begin(), rectangles.end(), [](const Rec& l, const Rec& r){
    //     return (l.x < r.x);
    // });
    clock_t sortEnd = clock();

    u32 numberOfGrids = DIVISION_PER_AXIS * DIVISION_PER_AXIS;

    GridSpace gridSpace(spaceBound);

    #if defined (WINDOWS)
    LARGE_INTEGER instructionsStart;
    QueryPerformanceCounter(&instructionsStart);
    #else
    clock_t insertionStart = clock();
    #endif

    for (u32 rectangleIndex = 0;
         rectangleIndex < rectangles.size();
         ++rectangleIndex)
    {
        gridSpace.insert(rectangleIndex);
    }
    clock_t insertionEnd = clock();
    clock_t collisionStart = clock();
    u32 numberOfCollisions = gridSpace.collisions();
    clock_t collisionEnd = clock();
    clock_t updateStart = clock();
    gridSpace.update();
    clock_t updateEnd = clock();

    #if defined (WINDOWS)
    LOG("Time taken: " << totalClockCycles.QuadPart / (r32)GlobalPerfCountFrequency << "s");
    LOG("Total number of clock cycles: " << totalClockCycles.QuadPart);
    #else
    LOG("Total number of clock cycles: " << updateEnd - insertionStart);
    #endif

    LOG("Time taken for insertion: " << (insertionEnd - insertionStart) / (r32)GlobalPerfCountFrequency);
    LOG("Time taken for collision: " << (collisionEnd - collisionStart) / (r32)GlobalPerfCountFrequency);
    LOG("Time taken for update: " << (updateEnd - updateStart) / (r32)GlobalPerfCountFrequency);
    LOG("Time taken to sort: " << (sortEnd - sortStart) / (r32)GlobalPerfCountFrequency);
    LOG("Number of collisions: " << numberOfCollisions);

    LOG("Number of grids: " << numberOfGrids);
    LOG("Number of insertions: " << NUMBER_OF_INSERTIONS);
    LOG("Size of each grid in bytes: " <<  sizeof(Grid));
    LOG("Number of RecNodes: " << recNodeAllocator.numberOfNodes);
    LOG("Total size of RecNodes in KB: " << recNodeAllocator.numberOfNodes * sizeof(RecNode) / 1024);

    return (0);
}
