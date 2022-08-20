#include <iostream>
#include <random>
#include <ctime>
#include <algorithm>
#include <vector>
#include <cstddef>

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

#define GRID_REC_LIMIT 64
#define DIVISION_PER_AXIS 128
#define NUMBER_OF_INSERTIONS 100000

struct Rec
{
    u32 XY;
    u16 WH;

    inline b32 doesRecIntersect(Rec that) const
    {
        u16 x = (u16)(XY >> 16);
        u16 y = (u16)XY;
        u8 w = (u8)(WH >> 8);
        u8 h = (u8)WH;
        return (x < (u16)(that.XY >> 16) + (u8)(that.WH >> 8) && (u16)(that.XY >> 16) < x + w &&
                y < (u16)(that.XY) + (u8)that.WH && (u16)(that.XY) < y + h);
    }
};

Rec spaceBound = { 0.0f, 0.0f, 2048.0f, 1024.0f };

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
    Grid() : numberOfRecs(0) {}
    Rec rectangles[GRID_REC_LIMIT];
    u32 numberOfRecs;
};

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
    void insert(Rec rec)
    {
        u8 gridWidth = (u8)(((u16)bound.XY << 16 + (u16)(bound.WH << 8)) / DIVISION_PER_AXIS);
        u8 gridHeight = (u8)(((u16)bound.XY + (u16)(u8)bound.WH) / DIVISION_PER_AXIS);
        u32 startGridX = (rec.XY < 0 ? 0 : (u32)(u16)(rec.XY >> 16) / (u32)gridWidth);
        u32 startGridY = (rec.y < 0 ? 0 : (u32)(u16)rec.XY / (u32)gridHeight);
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
                if (!(grid.numberOfRecs < GRID_REC_LIMIT))
                {
                    LOG(grid.numberOfRecs);
                    ASSERT(false);
                }
                grid.rectangles[grid.numberOfRecs++] = rec;
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
                for (i32 i = 0;
                    i < grid.numberOfRecs;
                    ++i)
                {
                    // delete the rectangle from the grid
                    if (grid.rectangles[i].doesRecIntersect(gridBound) == false)
                    {
                        // set cur rectangle with last one
                        grid.rectangles[i] = grid.rectangles[grid.numberOfRecs - 1];
                        // decrement number of recs
                        --grid.numberOfRecs;
                        // decrement i
                        --i;
                    }
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
                u32 numberOfRecs = grid.numberOfRecs;
                for (u32 i = 0;
                     i < numberOfRecs;
                     ++i)
                {
                    for (u32 j = 0;
                         j < numberOfRecs;
                         ++j)
                    {
                        if (i != j && grid.rectangles[i].doesRecIntersect(grid.rectangles[j]))
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

    vector<Rec> rectangles;
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
    //     return (l.y < r.y);
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
        gridSpace.insert(rectangles[rectangleIndex]);
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
    LOG("Number of rectangle per grid: " << GRID_REC_LIMIT);
    LOG("Theoretical maximum number of rectangles: " << numberOfGrids * GRID_REC_LIMIT);
    LOG("Number of insertions: " << NUMBER_OF_INSERTIONS);
    LOG("Size of each grid in bytes: " <<  sizeof(Grid));
    LOG("Size of all rectangles stored in all grids in KB: " << sizeof(Grid) * numberOfGrids / 1024);

    return (0);
}
