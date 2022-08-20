#include "NodeAllocator.hpp"
#include <random>
#include <ctime>
#include <thread>
#include <Windows.h>

# define NUMBER_OF_INSERTIONS 32000
# define NUMBER_OF_TREEBUILDS 60

extern Rec screenBound;
extern vector<Rec> rectangles;
extern NodeAllocator nodeAllocator;

inline float getRand(float low, float high)
{
    static random_device dev;
    static mt19937 rng(dev());
    uniform_real_distribution<float> dist(low, high);
    return (dist(rng));
}

int WinMain(
    HINSTANCE instance,
    HINSTANCE previousInstance,
    LPSTR     commandLine,
    int       showCommand)
{
    srand(42);
    for (u32 iteration = 0;
         iteration < NUMBER_OF_INSERTIONS;
         ++iteration)
    {
        float minSize = 10.0f;
        float maxSize = 10.001f;
        Rec rectangle = { getRand(screenBound.topLeftX, screenBound.topLeftX + screenBound.width),
                                getRand(screenBound.topLeftY, screenBound.topLeftY + screenBound.height),
                                getRand(minSize, maxSize),
                                getRand(minSize, maxSize) };
        rectangles.push_back(rectangle);
    }
    LOG("Number of rectangles: " << NUMBER_OF_INSERTIONS);

    clock_t insertionClock = 0;
    clock_t intersectionsClock = 0;
    u32 numberOfInsersections = 0;

    LARGE_INTEGER instructionsStart;
    QueryPerformanceCounter(&instructionsStart);
    for (u32 numberOfTreeConstructions = 0;
         numberOfTreeConstructions < NUMBER_OF_TREEBUILDS;
         ++numberOfTreeConstructions)
    {
        nodeAllocator.clear();

        Node *root = nodeAllocator.allocateNode(screenBound, vertical, -1);

        clock_t start = clock();
        for (u32 rectangleIndex = 0;
            rectangleIndex < rectangles.size();
            ++rectangleIndex)
        {
            root->insert(rectangleIndex);
        }
        insertionClock += clock() - start;
    
        start = clock();
        numberOfInsersections = root->checkIntersections();
        intersectionsClock += clock() - start;
    }
    LARGE_INTEGER totalClockCycles;
    QueryPerformanceCounter(&totalClockCycles);
    totalClockCycles.QuadPart -= instructionsStart.QuadPart;
    
    LOG("Allocated nodes: " << NODE_POOL_SIZE << ", in kilobytes: " << NODE_POOL_SIZE * sizeof(Node) / 1000.0f);
    LOG("Size of a node in bytes: " << sizeof(Node));
    LOG("Node capacity: " << NODE_LIMIT << " rectangles");

    LOG("Number of intersections: " << numberOfInsersections);
    LOG("Time taken for insertion: " << insertionClock / (float)CLOCKS_PER_SEC << "s");
    LOG("Time taken for intersection check: " << intersectionsClock / (float)CLOCKS_PER_SEC << "s");

    LOG("Total number of clock cycles: " << totalClockCycles.QuadPart);

    // system("leaks a.out");

    return (0);
}
