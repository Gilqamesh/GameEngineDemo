#include "NodeAllocator.hpp"
#include <random>
#include <ctime>
#include <thread>

# define NUMBER_OF_INSERTIONS 32000
# define NUMBER_OF_TREEBUILDS 60

extern Rectangle screenBound;
vector<Rectangle> rectangles;
vector<Rectangle> rectangles2;
NodeAllocator nodePool(&rectangles);
NodeAllocator nodePool2(&rectangles2);

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
    Rectangle leftBound = {
        screenBound.topLeftX,
        screenBound.topLeftY,
        screenBound.width / 2.0f,
        screenBound.height
    };
    Rectangle rightBound = {
        screenBound.topLeftX + screenBound.width / 2.0f,
        screenBound.topLeftY,
        screenBound.width / 2.0f,
        screenBound.height
    };
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
        if (rectangle.doesRecIntersect(leftBound))
        {
            rectangles.push_back(rectangle);
        }
        if (rectangle.doesRecIntersect(rightBound))
        {
            rectangles2.push_back(rectangle);
        }
    }
    LOG("Number of rectangles: " << NUMBER_OF_INSERTIONS);

    clock_t insertionClock = 0;
    clock_t intersectionsClock = 0;
    u32 numberOfInsersections = 0;
    u32 numberOfInsersections2 = 0;

    thread t1([&](){
        for (u32 numberOfTreeConstructions = 0;
            numberOfTreeConstructions < NUMBER_OF_TREEBUILDS;
            ++numberOfTreeConstructions)
        {
            Node *root2 = nodePool2.allocateNode(rightBound, vertical, -1);
            for (u32 rectangleIndex = 0;
                rectangleIndex < rectangles2.size();
                ++rectangleIndex)
            {
                root2->insert(rectangleIndex);
            }

            numberOfInsersections2 = root2->checkIntersections();
        }
    });

    for (u32 numberOfTreeConstructions = 0;
         numberOfTreeConstructions < NUMBER_OF_TREEBUILDS;
         ++numberOfTreeConstructions)
    {
        nodePool.clear();
        nodePool2.clear();

        Node *root = nodePool.allocateNode(leftBound, vertical, -1);

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
    t1.join();
    
    numberOfInsersections += numberOfInsersections2;
    LOG("Allocated nodes: " << NODE_POOL_SIZE << ", in kilobytes: " << NODE_POOL_SIZE * sizeof(Node) / 1000.0f);
    LOG("Size of a node in bytes: " << sizeof(Node));
    LOG("Node capacity: " << NODE_LIMIT << " rectangles");

    LOG("Number of intersections: " << numberOfInsersections);
    LOG("Time taken for insertion: " << insertionClock / (float)CLOCKS_PER_SEC << "s");
    LOG("Time taken for intersection check: " << intersectionsClock / (float)CLOCKS_PER_SEC << "s");

    // system("leaks a.out");
}
