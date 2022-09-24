#include <iostream>
#include <iomanip>
#include <stack>
#include <string>
#include <vector>
#include <unordered_map>
#include <cmath>
#include <array>
#define NODE_CAPACITY 40
#define NUMBER_OF_INSERTIONS 10000
#define NUMBER_OF_TREEBUILDS 1

using namespace std;

#define LOG(x) (cout << x << endl)
#define ArrayCount(x) ((sizeof(x))/sizeof((x)[0]))

unsigned int allocatedNodes = 0;

struct Rectangle
{
    float topLeftX;
    float topLeftY;
    float width;
    float height;

    inline bool doesIntersect(const Rectangle& other) const
    {
        if (topLeftX + width < other.topLeftX || other.topLeftX + other.width < topLeftX)
            return (false);
        if (topLeftY + height < other.topLeftY || other.topLeftY + other.height < topLeftY)
            return (false);
        return (true);        
    }
};

ostream& operator<<(ostream& os, const Rectangle& rec)
{
    os << rec.topLeftX << " " << rec.topLeftY << " " << rec.width << " " << rec.height;
    return (os);   
}

time_t newTimer = 0;

class QuadTreeNode
{
    // this could be a different container, we will see what makes sense
    array<unsigned int, NODE_CAPACITY> rectangleIndices;
    const unsigned int nodeCapacity;
    unsigned int curCapacity;

    Rectangle boundary;

    QuadTreeNode *northWest;
    QuadTreeNode *northEast;
    QuadTreeNode *southWest;
    QuadTreeNode *southEast;
public:
    QuadTreeNode(const Rectangle& boundary)
        : nodeCapacity(NODE_CAPACITY),
          curCapacity(0),
          boundary(boundary),
          northWest(nullptr),
          northEast(nullptr),
          southWest(nullptr),
          southEast(nullptr) {}
    ~QuadTreeNode()
    {
        if (northWest)
        {
            delete northWest;
            delete northEast;
            delete southWest;
            delete southEast;
        }
    }

    bool insert(const vector<Rectangle>& rectangles, unsigned int index)
    {
        if (boundary.doesIntersect(rectangles[index]) == false)
        {
            return (false);
        }

        if (northWest == nullptr)
        {
            if (curCapacity < nodeCapacity)
            {
                rectangleIndices[curCapacity++] = index;
                return (true);
            }
            subdivide(rectangles);
            curCapacity = 0;
        }

        northWest->insert(rectangles, index);
        northEast->insert(rectangles, index);
        southWest->insert(rectangles, index);
        southEast->insert(rectangles, index);

        // This will fail if the number of rectangles intersecting at one point > nodeCapacity because of infinite recursion
        // LOG("Something went wrong in insert");
        // exit(1);
        return (false);
    }

    unsigned int checkIntersections(const vector<Rectangle>& rectangles)
    {
        return (checkIntersections(rectangles, 0));
    }

private:
    void subdivide(const vector<Rectangle>& rectangles)
    {
        float halfWidth = boundary.width / 2.0f;
        float halfHeight = boundary.height / 2.0f;
        northWest = new QuadTreeNode({boundary.topLeftX, boundary.topLeftY, halfWidth, halfHeight});
        northEast = new QuadTreeNode({boundary.topLeftX + halfWidth, boundary.topLeftY, halfWidth, halfHeight});
        southWest = new QuadTreeNode({boundary.topLeftX, boundary.topLeftY + halfHeight, halfWidth, halfHeight});
        southEast = new QuadTreeNode({boundary.topLeftX + halfWidth, boundary.topLeftY + halfHeight, halfWidth, halfHeight});
        allocatedNodes += 4;

        for (unsigned int index : rectangleIndices)
        {
            northWest->insert(rectangles, index);
            northEast->insert(rectangles, index);
            southWest->insert(rectangles, index);
            southEast->insert(rectangles, index);
        }
    }

    unsigned int checkIntersections(const vector<Rectangle>& rectangles, int level)
    {
        // cout << "Level " << level << ": ";
        unsigned int nOfIntersections = 0;
        for (unsigned int i = 0; i < curCapacity; ++i)
        {
            // cout << rectangleIndices[i] << " ";
            for (unsigned int j = i + 1; j < curCapacity; ++j)
            {
                if (rectangles[rectangleIndices[i]].doesIntersect(rectangles[rectangleIndices[j]]))
                {
                    ++nOfIntersections;
                }
            }
        }
        // cout << endl;
        if (northWest != nullptr)
        {
            nOfIntersections += northWest->checkIntersections(rectangles, level + 1);
            nOfIntersections += northEast->checkIntersections(rectangles, level + 1);
            nOfIntersections += southWest->checkIntersections(rectangles, level + 1);
            nOfIntersections += southEast->checkIntersections(rectangles, level + 1);
        }

        return (nOfIntersections);
    }
};

class QuadTree
{
    vector<Rectangle> rectangles;
    QuadTreeNode _root;
    Rectangle _bound;
public:
    QuadTree(const Rectangle& bound) : _root(bound), _bound(bound) {}
    void insert(const Rectangle& rectangle)
    {
        if (_bound.doesIntersect(rectangle) == false)
            return ;
        rectangles.push_back(rectangle);
        _root.insert(rectangles, rectangles.size() - 1);
    }
    unsigned int checkIntersections()
    {
        return (_root.checkIntersections(rectangles));
    }
};

float myRand(float low, float high)
{
    return (low + static_cast <float> (rand()) / static_cast <float>(RAND_MAX) * (high - low));
}

int main()
{
    srand(42);
    float low = 0.0f;
    float high = 1600.0f;

    vector<Rectangle> rectangles;
    for (unsigned int index = 0; index < NUMBER_OF_INSERTIONS; ++index)
    {
        float minSize = 10.0f;
        float maxSize = 10.2f;
        rectangles.push_back({myRand(low, high), myRand(low, 900.0f),
                              myRand(minSize, maxSize), myRand(minSize, maxSize)});
    }

    unsigned int numberOfIntersections;

    LOG("Number of rectangles: " << NUMBER_OF_INSERTIONS);

    clock_t insertionClock = 0;
    clock_t intersectionsClock = 0;

    for (int numberOfTreeConstructions = 0;
         numberOfTreeConstructions < NUMBER_OF_TREEBUILDS;
         ++numberOfTreeConstructions)
    {
        allocatedNodes = 0;
        QuadTree qt1({low, low, 1600.0f, 900.0f});

        clock_t start = clock();
        for (const auto& rectangle : rectangles)
        {
            qt1.insert(rectangle);
        }
        insertionClock += clock() - start;

        start = clock();
        numberOfIntersections = qt1.checkIntersections();
        intersectionsClock += clock() - start;
    }

    LOG("Allocated nodes: " << allocatedNodes << ", in kilobytes: " << allocatedNodes * sizeof(QuadTreeNode) / 1000.0f);
    LOG("Size of a node in bytes: " << sizeof(QuadTreeNode));
    LOG("Node capacity: " << NODE_CAPACITY << " rectangles");

    LOG("Number of intersections: " << numberOfIntersections);
    LOG("Time taken for insertion: " << insertionClock / (float)CLOCKS_PER_SEC << "s");
    LOG("Time taken for intersection check: " <<  intersectionsClock / (float)CLOCKS_PER_SEC << "s");

}
