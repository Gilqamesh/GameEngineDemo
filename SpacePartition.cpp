#include <ctime>
#include <thread>
#include <fstream>
#include <algorithm>
#include "Tree.hpp"

# define FRAMES_PER_SEC 60
# define SECONDS_SIMULATED 10

extern clock_t timer;
extern clock_t timer2;
extern clock_t timer3;

int main()
{
    srand(42);

    u16 halfWidth = 800;
    u16 halfHeight = 900;
    AABB NWBound = { 0, 0, halfWidth, halfHeight };
    AABB NEBound = { halfWidth, 0, halfWidth, halfHeight };
    AABB SWBound = { 0, halfHeight, halfWidth, halfHeight };
    AABB SEBound = { halfWidth, halfHeight, halfWidth, halfHeight };
    Tree trees[4] = {
        Tree(NWBound),
        Tree(NEBound),
        Tree(SWBound),
        Tree(SEBound)
    };
    AABB screenBound = { 0, 0, static_cast<u16>(halfWidth << 1), static_cast<u16>(halfHeight << 1) };
    // Tree tree(screenBound);

    const u16 numberOfThreads = 1;

    clock_t insertionClock = 0;
    clock_t start = clock();
    for (u32 iteration = 0;
         iteration < NUMBER_OF_INSERTIONS;
         ++iteration)
    {
        r32 minSize = 10.0f;
        r32 maxSize = 25.0f;
        r32 minVel  = -50.0f;
        r32 maxVel  = 50.0f;
        Rec rectangle = { getRand(screenBound.x, screenBound.x + screenBound.w),
                          getRand(screenBound.y, screenBound.y + screenBound.h),
                          getRand(minSize, maxSize),
                          getRand(minSize, maxSize),
                          getRand(minVel, maxVel),
                          getRand(minVel, maxVel)
                          };
        // tree.insert(rectangle);
        // problem is between the bounds.. if an object needs to exist in both bounds what then?..
        // if (rectangle.doesAABBIntersect(NWBound))
        // {
        //     trees[0].insert(rectangle);
        // }
        if (rectangle.doesAABBIntersect(screenBound))
        {
            trees[0].insert(rectangle);
        }
        else if (rectangle.doesAABBIntersect(NEBound))
        {
            trees[1].insert(rectangle);
        }
        else if (rectangle.doesAABBIntersect(SWBound))
        {
            trees[2].insert(rectangle);
        }
        else if (rectangle.doesAABBIntersect(SEBound))
        {
            trees[3].insert(rectangle);
        }
    }
    insertionClock += clock() - start;

    // rectangles.push_back({0.0f, 0.0f, 10.0f, 10.0f});
    // rectangles.push_back({1.0f, 1.0f, 10.0f, 10.0f});
    // rectangles.push_back({300.0f, 200.0f, 250.0f, 250.0f});
    // rectangles.push_back({700.0f, 200.0f, 250.0f, 250.0f});
    // rectangles.push_back({1400.0f, 200.0f, 250.0f, 250.0f});
    // rectangles.push_back({1400.0f, 700.0f, 250.0f, 250.0f});
    // rectangles.push_back({400.0f, 600.0f, 250.0f, 250.0f});
    LOG("Number of rectangles: " << NUMBER_OF_INSERTIONS);
    LOG("Size of one rectangle: " << sizeof(Rec) << ", size of all rectangles: " << NUMBER_OF_INSERTIONS * sizeof(Rec) / 1024.0f << "KB");


    // for (u32 rectangleIndex = 0;
    //     rectangleIndex < rectangles.size();
    //     ++rectangleIndex)
    // {
    //     tree.insert(rectangles[rectangleIndex]);
    // }
    // root->logInfo(insertionFile, nodeAllocator, 0, 0);

    LOG("Intersections...");
    clock_t totalIntersectionClock = 0;
    u32 maxNumberOfInsersections[numberOfThreads] = {};
    array<thread, numberOfThreads> threads;
    for (u16 threadIndex = 0;
         threadIndex < numberOfThreads;
         ++threadIndex)
    {
        //  for (u32 currentSecond = 0;
        //     currentSecond < SECONDS_SIMULATED;
        //     ++currentSecond)
        // {
        //     // cout << currentSecond + 1 << "s: ";
        //     for (u32 frameIndex = 0;
        //         frameIndex < FRAMES_PER_SEC;
        //         ++frameIndex)
        //     {
        //         start = clock();
        //         u32 numberOfIntersections = tree.update();
        //         totalIntersectionClock += clock() - start;
        //         // cout << numberOfIntersections << " ";
        //         if (maxNumberOfInsersections < numberOfIntersections)
        //         {
        //             maxNumberOfInsersections = numberOfIntersections;
        //         }   
        //     }
        // }
        for (u32 currentSecond = 0;
                currentSecond < SECONDS_SIMULATED;
                ++currentSecond)
            {
                // cout << currentSecond + 1 << "s: ";
                for (u32 frameIndex = 0;
                    frameIndex < FRAMES_PER_SEC;
                    ++frameIndex)
                {
                    start = clock();
                    u32 numberOfIntersections = trees[threadIndex].update();
                    totalIntersectionClock += clock() - start;
                    // cout << numberOfIntersections << " ";
                    if (maxNumberOfInsersections[threadIndex] < numberOfIntersections)
                    {
                        maxNumberOfInsersections[threadIndex] = numberOfIntersections;
                    }   
                }
                // LOG("");
            }
        // threads[threadIndex] = thread([&](u16 threadId){
        //     for (u32 currentSecond = 0;
        //         currentSecond < SECONDS_SIMULATED;
        //         ++currentSecond)
        //     {
        //         // cout << currentSecond + 1 << "s: ";
        //         for (u32 frameIndex = 0;
        //             frameIndex < FRAMES_PER_SEC;
        //             ++frameIndex)
        //         {
        //             start = clock();
        //             u32 numberOfIntersections = trees[threadId].update();
        //             totalIntersectionClock += clock() - start;
        //             // cout << numberOfIntersections << " ";
        //             if (maxNumberOfInsersections[threadId] < numberOfIntersections)
        //             {
        //                 maxNumberOfInsersections[threadId] = numberOfIntersections;
        //             }   
        //         }
        //         // LOG("");
        //     }
        // }, threadIndex);
    }
    u32 totalMaxNumberOfIntersections = 0;
    Tree &treeRef = trees[0];
    u32 allocatedNodes = 0;
    u32 deletedNodes = 0;
    u32 maxAllocatedNodes = 0;
    u32 nodeListsAllocated = 0;
    u32 nodeListsDeleted = 0;
    for (u16 threadIndex = 0;
         threadIndex < numberOfThreads;
         ++threadIndex)
    {
        // threads[threadIndex].join();
        totalMaxNumberOfIntersections += maxNumberOfInsersections[threadIndex];
        allocatedNodes += trees[threadIndex].nodeAllocator.allocatedNodes();
        deletedNodes += trees[threadIndex].nodeAllocator.deletedNodes();
        maxAllocatedNodes += trees[threadIndex].nodeAllocator.maxAllocatedNodes();
        nodeListsAllocated += trees[threadIndex].nodeListAllocator._nodeLists.size();
        nodeListsDeleted += trees[threadIndex].nodeListAllocator.getDeletionCount();
    }

    LOG("Initial Node pool size: " << NODE_POOL_SIZE * numberOfThreads << ", in kilobytes: " << NODE_POOL_SIZE * sizeof(Node) * numberOfThreads / 1024.0f << "KB");

    LOG("Allocated nodes: " << allocatedNodes << ", in kilobytes: " << allocatedNodes * sizeof(Node) / 1024.0f << "KB");
    LOG("Deleted nodes: " << deletedNodes << ", in kilobytes: " << deletedNodes * sizeof(Node) / 1024.0f << "KB");
    LOG("Total allocated nodes: " << maxAllocatedNodes << ", in kilobytes: " << maxAllocatedNodes * sizeof(Node) / 1024.0f << "KB");
    LOG("Size of a node in bytes: " << sizeof(Node) << "B");
    LOG("Node capacity: " << NODE_LIMIT << " rectangles");

    LOG("Max intersections: " << totalMaxNumberOfIntersections);
    LOG("Time taken for insertion: " << insertionClock / (r32)CLOCKS_PER_SEC << "s");
    LOG("Time taken for update check: " << totalIntersectionClock / (r32)CLOCKS_PER_SEC / (r32)SECONDS_SIMULATED / (r32)numberOfThreads << "s");
    LOG("Seconds simulated: " << SECONDS_SIMULATED << ", total time taken: " << (totalIntersectionClock + insertionClock) / (r32)CLOCKS_PER_SEC / (r32)numberOfThreads << "s");

    // LOG("Number of LeafHashes allocated: " << treeRef.leafHashAllocator._leafHashes.size());
    // LOG("Number of LeafHashes deleted: " << treeRef.leafHashAllocator.getDeletionCount() << ", in KB: " << treeRef.leafHashAllocator.getDeletionCount() * sizeof(LeafHash) / 1024.0f);
    // LOG("Total size of LeafHashes in KB: " << treeRef.leafHashAllocator._leafHashes.size() * sizeof(LeafHash) / 1024.0f);

    LOG("Number of NodeLists allocated: " << nodeListsAllocated);
    LOG("Number of NodeLists deleted: " << nodeListsDeleted << ", in KB: " << nodeListsDeleted * sizeof(NodeList) / 1024.0f);
    LOG("Total size of NodeLists in KB: " << nodeListsAllocated * sizeof(NodeList) / 1024.0f);

    LOG("Timer: " << timer / (r32)CLOCKS_PER_SEC << "s");
    LOG("Timer2: " << timer2 / (r32)CLOCKS_PER_SEC << "s");
    LOG("Timer3: " << timer3 / (r32)CLOCKS_PER_SEC << "s");

    // system("leaks a.out");

    return (0);
}
