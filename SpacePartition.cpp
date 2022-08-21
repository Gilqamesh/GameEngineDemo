#include "NodeAllocator.hpp"
#include <random>
#include <ctime>
#include <thread>

# define FRAMES_PER_SEC 60
# define SECONDS_SIMULATED 10

extern Rec screenBound;
vector<Rec> rectangles;
NodeAllocator nodeAllocator;
extern LeafHashAllocator leafHashAllocator;
extern u32 maxInsertionDepth;
extern Rec maxInsertionBound;

inline float getRand(float low, float high)
{
    static random_device dev;
    static mt19937 rng(dev());
    uniform_real_distribution<float> dist(low, high);
    return (dist(rng));
}

int main()
{
    srand(42);
    
    for (u32 iteration = 0;
         iteration < NUMBER_OF_INSERTIONS;
         ++iteration)
    {
        float minSize = 10.0f;
        float maxSize = 25.0f;
        Rec rectangle = { getRand(screenBound.topLeftX, screenBound.topLeftX + screenBound.width),
                          getRand(screenBound.topLeftY, screenBound.topLeftY + screenBound.height),
                          getRand(minSize, maxSize),
                          getRand(minSize, maxSize) };
        rectangles.push_back(rectangle);
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

    nodeAllocator.clear();
    leafHashAllocator.clear();
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

    LOG("Intersections...");
    clock_t totalIntersectionClock = 0;
    for (u32 currentSecond = 0;
         currentSecond < SECONDS_SIMULATED;
         ++currentSecond)
    {
        cout << currentSecond << "s: ";
        for (u32 numberOfTreeConstructions = 0;
            numberOfTreeConstructions < FRAMES_PER_SEC;
            ++numberOfTreeConstructions)
        {
            start = clock();
            u32 numberOfIntersections = root->update(nodeAllocator);
            cout << numberOfIntersections << " ";
            if (maxNumberOfInsersections < numberOfIntersections)
            {
                maxNumberOfInsersections = numberOfIntersections;
            }
            totalIntersectionClock += clock() - start;
        }
        LOG("");
    }

    LOG("Node pool size: " << NODE_POOL_SIZE << ", in kilobytes: " << NODE_POOL_SIZE * sizeof(Node) / 1024.0f << "KB");
    LOG("Allocated nodes: " << nodeAllocator.allocatedNodes() << ", in kilobytes: " << nodeAllocator.allocatedNodes() * sizeof(Node) / 1024.0f << "KB");
    LOG("Total allocated nodes: " << nodeAllocator.maxAllocatedNodes() << ", in kilobytes: " << nodeAllocator.maxAllocatedNodes() * sizeof(Node) / 1024.0f << "KB");
    LOG("Size of a node in bytes: " << sizeof(Node) << "B");
    LOG("Node capacity: " << NODE_LIMIT << " rectangles");
    LOG("Maximum insertion depth: " << maxInsertionDepth << ", max insertion bound: " << maxInsertionBound);

    LOG("Max intersections: " << maxNumberOfInsersections);
    LOG("Time taken for insertion: " << insertionClock / (float)CLOCKS_PER_SEC << "s");
    LOG("Time taken for update check: " << totalIntersectionClock / (float)CLOCKS_PER_SEC / SECONDS_SIMULATED << "s");
    LOG("Time taken to sort rectangles: " << sortEnd / (float)CLOCKS_PER_SEC << "s");
    LOG("Seconds simulated: " << SECONDS_SIMULATED << ", total time taken: " << (totalIntersectionClock + insertionClock + sortEnd) / (float)CLOCKS_PER_SEC << "s");

    LOG("Total size of LeafHashes in KB: " << leafHashAllocator._leafHashes.size() * sizeof(LeafHash) / 1024.0f);
    LOG("Number of LeafHashes deleted: " << leafHashAllocator.getDeletionCount() << ", in KB: " << leafHashAllocator.getDeletionCount() * sizeof(LeafHash) / 1024.0f);

    // system("leaks a.out");

    return (0);
}
