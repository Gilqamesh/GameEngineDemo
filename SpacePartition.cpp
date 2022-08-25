#include <ctime>
#include <thread>
#include <fstream>
#include <algorithm>
#include "Tree.hpp"

# define FRAMES_PER_SEC 60
# define SECONDS_SIMULATED 10

extern u32 maxInsertionDepth;
extern AABB maxInsertionBound;
extern clock_t timer;
extern clock_t timer2;
extern clock_t timer3;
ofstream insertionFile("insertion.html");
ofstream afterEraseFile("afterErase.html");
ofstream afterReinsert("afterReinsert.html");

int main()
{
    srand(42);

    Tree tree({0, 0, 1600, 900});

    for (u32 iteration = 0;
         iteration < NUMBER_OF_INSERTIONS;
         ++iteration)
    {
        r32 minSize = 10.0f;
        r32 maxSize = 25.0f;
        r32 minVel  = -50.0f;
        r32 maxVel  = 50.0f;
        Rec rectangle = { getRand(tree.bound.x, tree.bound.x + tree.bound.w),
                          getRand(tree.bound.y, tree.bound.y + tree.bound.h),
                          getRand(minSize, maxSize),
                          getRand(minSize, maxSize),
                          getRand(minVel, maxVel),
                          getRand(minVel, maxVel)
                          };
        tree.insert(rectangle);
    }
    // rectangles.push_back({0.0f, 0.0f, 10.0f, 10.0f});
    // rectangles.push_back({1.0f, 1.0f, 10.0f, 10.0f});
    // rectangles.push_back({300.0f, 200.0f, 250.0f, 250.0f});
    // rectangles.push_back({700.0f, 200.0f, 250.0f, 250.0f});
    // rectangles.push_back({1400.0f, 200.0f, 250.0f, 250.0f});
    // rectangles.push_back({1400.0f, 700.0f, 250.0f, 250.0f});
    // rectangles.push_back({400.0f, 600.0f, 250.0f, 250.0f});
    clock_t sortStart = clock();
    // sort(rectangles.begin(), rectangles.end(), [](const Rec& l, const Rec& r){
    //     return (l.topLeftX < r.topLeftX);
    // });
    clock_t sortEnd = clock() - sortStart;
    LOG("Number of rectangles: " << NUMBER_OF_INSERTIONS);
    LOG("Size of one rectangle: " << sizeof(Rec) << ", size of all rectangles: " << NUMBER_OF_INSERTIONS * sizeof(Rec) / 1024.0f << "KB");

    clock_t insertionClock = 0;
    u32 maxNumberOfInsersections = 0;

    clock_t start = clock();
    // for (u32 rectangleIndex = 0;
    //     rectangleIndex < rectangles.size();
    //     ++rectangleIndex)
    // {
    //     tree.insert(rectangles[rectangleIndex]);
    // }
    insertionClock += clock() - start;
    // root->logInfo(insertionFile, nodeAllocator, 0, 0);

    LOG("Intersections...");
    clock_t totalIntersectionClock = 0;
    for (u32 currentSecond = 0;
         currentSecond < SECONDS_SIMULATED;
         ++currentSecond)
    {
        cout << currentSecond + 1 << "s: ";
        // afterEraseFile.open("afterErase.html");
        for (u32 frameIndex = 0;
            frameIndex < FRAMES_PER_SEC;
            ++frameIndex)
        {
            start = clock();
            u32 numberOfIntersections = tree.update();
            totalIntersectionClock += clock() - start;
            cout << numberOfIntersections << " ";
            if (maxNumberOfInsersections < numberOfIntersections)
            {
                maxNumberOfInsersections = numberOfIntersections;
            }   
        }
        // tree.logInfo(afterEraseFile);
        // afterEraseFile.close();
        LOG("");
    }
    // root->printBounds(40, nodeAllocator);

    LOG("Node pool size: " << NODE_POOL_SIZE << ", in kilobytes: " << NODE_POOL_SIZE * sizeof(Node) / 1024.0f << "KB");
    LOG("Allocated nodes: " << tree.nodeAllocator.allocatedNodes() << ", in kilobytes: " << tree.nodeAllocator.allocatedNodes() * sizeof(Node) / 1024.0f << "KB");
    LOG("Deleted nodes: " << tree.nodeAllocator.deletedNodes() << ", in kilobytes: " << tree.nodeAllocator.deletedNodes() * sizeof(Node) / 1024.0f << "KB");
    LOG("Total allocated nodes: " << tree.nodeAllocator.maxAllocatedNodes() << ", in kilobytes: " << tree.nodeAllocator.maxAllocatedNodes() * sizeof(Node) / 1024.0f << "KB");
    LOG("Size of a node in bytes: " << sizeof(Node) << "B");
    LOG("Node capacity: " << NODE_LIMIT << " rectangles");
    LOG("Maximum insertion depth: " << maxInsertionDepth << ", max insertion bound: " << maxInsertionBound);

    LOG("Max intersections: " << maxNumberOfInsersections);
    LOG("Time taken for insertion: " << insertionClock / (r32)CLOCKS_PER_SEC << "s");
    LOG("Time taken for update check: " << totalIntersectionClock / (r32)CLOCKS_PER_SEC / SECONDS_SIMULATED << "s");
    LOG("Time taken to sort rectangles: " << sortEnd / (r32)CLOCKS_PER_SEC << "s");
    LOG("Seconds simulated: " << SECONDS_SIMULATED << ", total time taken: " << (totalIntersectionClock + insertionClock + sortEnd) / (r32)CLOCKS_PER_SEC << "s");

    // LOG("Number of LeafHashes allocated: " << tree.leafHashAllocator._leafHashes.size());
    // LOG("Number of LeafHashes deleted: " << tree.leafHashAllocator.getDeletionCount() << ", in KB: " << tree.leafHashAllocator.getDeletionCount() * sizeof(LeafHash) / 1024.0f);
    // LOG("Total size of LeafHashes in KB: " << tree.leafHashAllocator._leafHashes.size() * sizeof(LeafHash) / 1024.0f);

    LOG("Number of NodeLists allocated: " << tree.nodeListAllocator._nodeLists.size());
    LOG("Number of NodeLists deleted: " << tree.nodeListAllocator.getDeletionCount() << ", in KB: " << tree.nodeListAllocator.getDeletionCount() * sizeof(NodeList) / 1024.0f);
    LOG("Total size of NodeLists in KB: " << tree.nodeListAllocator._nodeLists.size() * sizeof(NodeList) / 1024.0f);

    LOG("Timer: " << timer / (r32)CLOCKS_PER_SEC << "s");
    LOG("Timer2: " << timer2 / (r32)CLOCKS_PER_SEC << "s");
    LOG("Timer3: " << timer3 / (r32)CLOCKS_PER_SEC << "s");

    // system("leaks a.out");

    return (0);
}
