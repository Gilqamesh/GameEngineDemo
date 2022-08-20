#include "NodeAllocator.hpp"
#include <random>
#include <ctime>
#include <thread>

# define NUMBER_OF_INSERTIONS 32000
# define NUMBER_OF_TREEBUILDS 60

extern Rec screenBound;
vector<Rec> rectangles;
NodeAllocator nodeAllocator;
extern RecNodeAllocator recNodeAllocator;

inline float getRand(float low, float high)
{
    static random_device dev;
    static mt19937 rng(dev());
    uniform_real_distribution<float> dist(low, high);
    return (dist(rng));
}

int main()
{
    LOG(sizeof(RecNode));
    srand(42);
    for (u32 iteration = 0;
         iteration < NUMBER_OF_INSERTIONS;
         ++iteration)
    {
        float minSize = 10.0f;
        float maxSize = 10.1f;
        Rec rectangle = { getRand(screenBound.topLeftX, screenBound.topLeftX + screenBound.width),
                          getRand(screenBound.topLeftY, screenBound.topLeftY + screenBound.height),
                          getRand(minSize, maxSize),
                          getRand(minSize, maxSize) };
        rectangles.push_back(rectangle);
    }
    sort(rectangles.begin(), rectangles.end(), [](const Rec& l, const Rec& r){
        return (l.topLeftX < r.topLeftX);
    });
    LOG("Number of rectangles: " << NUMBER_OF_INSERTIONS);

    clock_t insertionClock = 0;
    clock_t intersectionsClock = 0;
    u32 numberOfInsersections = 0;

    for (u32 numberOfTreeConstructions = 0;
         numberOfTreeConstructions < NUMBER_OF_TREEBUILDS;
         ++numberOfTreeConstructions)
    {
        nodeAllocator.clear();
        recNodeAllocator.clear();

        NodeInfo nodeInfo = nodeAllocator.allocateNode(screenBound);
        Node *root = nodeInfo.address;
        ASSERT(root);

        clock_t start = clock();
        for (u32 rectangleIndex = 0;
            rectangleIndex < rectangles.size();
            ++rectangleIndex)
        {
            root->insert(rectangleIndex, nodeAllocator, rectangles[rectangleIndex], horizontal);
        }
        insertionClock += clock() - start;
    
        start = clock();
        numberOfInsersections = root->checkIntersections(nodeAllocator);
        intersectionsClock += clock() - start;
    }
    LOG("Node pool size: " << NODE_POOL_SIZE << ", in kilobytes: " << NODE_POOL_SIZE * sizeof(Node) / 1024.0f << "KB");
    LOG("Allocated nodes: " << nodeAllocator.allocatedNodes() << ", in kilobytes: " << nodeAllocator.allocatedNodes() * sizeof(Node) / 1024.0f << "KB");
    LOG("Size of a node in bytes: " << sizeof(Node) << "B");
    LOG("Node capacity: " << NODE_LIMIT << " rectangles");

    LOG("Number of intersections: " << numberOfInsersections);
    LOG("Time taken for insertion: " << insertionClock / (float)CLOCKS_PER_SEC << "s");
    LOG("Time taken for intersection check: " << intersectionsClock / (float)CLOCKS_PER_SEC << "s");

    LOG("Number of RecNodes: " << recNodeAllocator.recNodes.size());
    LOG("Total size of RecNodes in KB: " << recNodeAllocator.recNodes.size() * sizeof(RecNode) / 1024.0f);


    // system("leaks a.out");

    return (0);
}
