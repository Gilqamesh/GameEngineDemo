#include "NodeAllocator.hpp"
#include <random>
#include <ctime>
#include <thread>

# define NUMBER_OF_INSERTIONS 32000
# define NUMBER_OF_TREEBUILDS 60

extern Rectangle screenBound;
vector<Rectangle> rectangles;
NodeAllocator nodeAllocator;

// inline float getRand(float low, float high)
// {
//     static random_device dev;
//     static mt19937 rng(dev());
//     uniform_real_distribution<float> dist(low, high);
//     return (dist(rng));
// }

float getRand(float low, float high)
{
    return (low + static_cast <float> (rand()) / static_cast <float>(RAND_MAX) * (high - low));
}

int main()
{
    srand(42);
    for (u32 iteration = 0;
         iteration < NUMBER_OF_INSERTIONS;
         ++iteration)
    {
        float minSize = 10.0f;
        float maxSize = 10.001f;
        Rectangle rectangle = { getRand(screenBound.topLeftX, screenBound.topLeftX + screenBound.width),
                                getRand(screenBound.topLeftY, screenBound.topLeftY + screenBound.height),
                                getRand(minSize, maxSize),
                                getRand(minSize, maxSize) };
        rectangles.push_back(rectangle);
    }
    sort(rectangles.begin(), rectangles.end(), [](const Rectangle& l, const Rectangle& r){
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

        Node *root = nodeAllocator.allocateNode(screenBound, vertical);

        clock_t start = clock();
        for (u32 rectangleIndex = 0;
            rectangleIndex < rectangles.size();
            ++rectangleIndex)
        {
            root->insert(rectangleIndex, nodeAllocator);
        }
        insertionClock += clock() - start;
    
        start = clock();
        numberOfInsersections = root->checkIntersections(nodeAllocator);
        intersectionsClock += clock() - start;
    }

    LOG("Allocated nodes: " << NODE_POOL_SIZE << ", in kilobytes: " << NODE_POOL_SIZE * sizeof(Node) / 1000.0f);
    LOG("Size of a node in bytes: " << sizeof(Node));
    LOG("Node capacity: " << NODE_LIMIT << " rectangles");

    LOG("Number of intersections: " << numberOfInsersections);
    LOG("Time taken for insertion: " << insertionClock / (float)CLOCKS_PER_SEC << "s");
    LOG("Time taken for intersection check: " << intersectionsClock / (float)CLOCKS_PER_SEC << "s");

    // system("leaks a.out");
}
