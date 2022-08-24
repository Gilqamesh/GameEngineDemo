#include "NodeAllocator.hpp"
#include <ctime>
#include <thread>
#include <fstream>
#include <algorithm>

# define FRAMES_PER_SEC 60
# define SECONDS_SIMULATED 10

extern Rec screenBound;
vector<Rec> rectangles;
NodeAllocator nodeAllocator;
extern LeafHashAllocator leafHashAllocator;
extern u32 maxInsertionDepth;
extern Rec maxInsertionBound;
extern clock_t timer;
extern clock_t timer2;
extern clock_t timer3;
ofstream insertionFile("insertion.html");
ofstream afterEraseFile("afterErase.html");
ofstream afterReinsert("afterReinsert.html");

int main()
{
    srand(42);

    for (u32 iteration = 0;
         iteration < NUMBER_OF_INSERTIONS;
         ++iteration)
    {
        r32 minSize = 10.0f;
        r32 maxSize = 25.0f;
        Rec rectangle = { getRand(screenBound.topLeftX + 1.0f, screenBound.topLeftX + screenBound.width - 1.0f),
                          getRand(screenBound.topLeftY + 1.0f, screenBound.topLeftY + screenBound.height - 1.0f),
                          getRand(minSize, maxSize),
                          getRand(minSize, maxSize) };
        rectangles.push_back(rectangle);
        static u32 i = 0;
        if (++i < 50)
        {
            LOG(rectangle);
        }
    }
    // rectangles.push_back({0.0f, 0.0f, 10.0f, 10.0f});
    // rectangles.push_back({1.0f, 1.0f, 10.0f, 10.0f});
    // rectangles.push_back({300.0f, 200.0f, 250.0f, 250.0f});
    // rectangles.push_back({700.0f, 200.0f, 250.0f, 250.0f});
    // rectangles.push_back({1400.0f, 200.0f, 250.0f, 250.0f});
    // rectangles.push_back({1400.0f, 700.0f, 250.0f, 250.0f});
    // rectangles.push_back({400.0f, 600.0f, 250.0f, 250.0f});
    clock_t sortStart = clock();
    sort(rectangles.begin(), rectangles.end(), [](const Rec& l, const Rec& r){
        return (l.topLeftX < r.topLeftX);
    });
    clock_t sortEnd = clock() - sortStart;
    LOG("Number of rectangles: " << NUMBER_OF_INSERTIONS);

    clock_t insertionClock = 0;
    u32 maxNumberOfInsersections = 0;

    NodeInfo nodeInfo = nodeAllocator.allocateNode(screenBound);
    Node *root = nodeInfo.address;
    ASSERT(root);

    clock_t start = clock();
    for (u32 rectangleIndex = 0;
        rectangleIndex < rectangles.size();
        ++rectangleIndex)
    {
        root->insert(rectangleIndex, nodeAllocator, rectangles[rectangleIndex], horizontal, 0);
    }
    insertionClock += clock() - start;
    // root->logInfo(insertionFile, nodeAllocator, 0, 0);

    LOG("Intersections...");
    clock_t totalIntersectionClock = 0;
    for (u32 currentSecond = 0;
         currentSecond < SECONDS_SIMULATED;
         ++currentSecond)
    {
        cout << currentSecond + 1 << "s: ";
        afterEraseFile.open("afterErase.html");
        for (u32 frameIndex = 0;
            frameIndex < FRAMES_PER_SEC;
            ++frameIndex)
        {
            start = clock();
            u32 numberOfIntersections = root->update(nodeAllocator, frameIndex);
            totalIntersectionClock += clock() - start;
            cout << numberOfIntersections << " ";
            if (maxNumberOfInsersections < numberOfIntersections)
            {
                maxNumberOfInsersections = numberOfIntersections;
            }   
        }
        root->logInfo(afterEraseFile, nodeAllocator, 0, 0);
        afterEraseFile.close();
        LOG("");
    }
    root->printBounds(40, nodeAllocator);

    LOG("Node pool size: " << NODE_POOL_SIZE << ", in kilobytes: " << NODE_POOL_SIZE * sizeof(Node) / 1024.0f << "KB");
    LOG("Allocated nodes: " << nodeAllocator.allocatedNodes() << ", in kilobytes: " << nodeAllocator.allocatedNodes() * sizeof(Node) / 1024.0f << "KB");
    LOG("Total allocated nodes: " << nodeAllocator.maxAllocatedNodes() << ", in kilobytes: " << nodeAllocator.maxAllocatedNodes() * sizeof(Node) / 1024.0f << "KB");
    LOG("Size of a node in bytes: " << sizeof(Node) << "B");
    LOG("Node capacity: " << NODE_LIMIT << " rectangles");
    LOG("Maximum insertion depth: " << maxInsertionDepth << ", max insertion bound: " << maxInsertionBound);

    LOG("Max intersections: " << maxNumberOfInsersections);
    LOG("Time taken for insertion: " << insertionClock / (r32)CLOCKS_PER_SEC << "s");
    LOG("Time taken for update check: " << totalIntersectionClock / (r32)CLOCKS_PER_SEC / SECONDS_SIMULATED << "s");
    LOG("Time taken to sort rectangles: " << sortEnd / (r32)CLOCKS_PER_SEC << "s");
    LOG("Seconds simulated: " << SECONDS_SIMULATED << ", total time taken: " << (totalIntersectionClock + insertionClock + sortEnd) / (r32)CLOCKS_PER_SEC << "s");

    LOG("Number of LeafHashes allocated: " << leafHashAllocator._leafHashes.size());
    LOG("Number of LeafHashes deleted: " << leafHashAllocator.getDeletionCount() << ", in KB: " << leafHashAllocator.getDeletionCount() * sizeof(LeafHash) / 1024.0f);
    LOG("Total size of LeafHashes in KB: " << leafHashAllocator._leafHashes.size() * sizeof(LeafHash) / 1024.0f);

    LOG("Timer: " << timer / (r32)CLOCKS_PER_SEC << "s");
    LOG("Timer2: " << timer2 / (r32)CLOCKS_PER_SEC << "s");
    LOG("Timer3: " << timer3 / (r32)CLOCKS_PER_SEC << "s");

    // system("leaks a.out");

    return (0);
}
