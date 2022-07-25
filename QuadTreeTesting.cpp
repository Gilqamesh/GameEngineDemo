#include <iostream>
#include <iomanip>
#include <stack>
#include <string>
#include <vector>
#include <unordered_map>
#include <cmath>
#include <array>
#define NODE_CAPACITY 20

using namespace std;

#define LOG(x) (cout << x << endl)
#define ArrayCount(x) ((sizeof(x))/sizeof((x)[0]))

uint64_t pow2(int power)
{
    static bool called;
    static uint64_t results[64];

    if (called == false)
    {
        called = true;
        uint64_t result = 1;
        for (int i = 0; i < ArrayCount(results); ++i)
        {
            results[i] = result;
            result *= 2;
        }
    }

    return (results[power]);
}

uint64_t pow4(int power)
{
    static bool called;
    static uint64_t results[32];

    if (called == false)
    {
        called = true;
        uint64_t result = 1;
        for (int i = 0; i < ArrayCount(results); ++i)
        {
            results[i] = result;
            result *= 4;
        }
    }

    return (results[power]);
}

struct Rectangle
{
    int topLeftX;
    int topLeftY;
    int width;
    int height;

    inline bool doesRecIntersect(const Rectangle& other) const
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
    vector<unsigned int> rectangleIndices;
    const unsigned int nodeCapacity;

    Rectangle boundary;

    QuadTreeNode *northWest;
    QuadTreeNode *northEast;
    QuadTreeNode *southWest;
    QuadTreeNode *southEast;
public:
    QuadTreeNode(const Rectangle& boundary)
        : nodeCapacity(NODE_CAPACITY),
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
        if (boundary.doesRecIntersect(rectangles[index]) == false)
        {
            return (false);
        }

        if (northWest == nullptr)
        {
            if (rectangleIndices.size() < nodeCapacity)
            {
                rectangleIndices.push_back(index);
                return (true);
            }
            subdivide(rectangles);
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
        int halfWidth = boundary.width / 2;
        int halfHeight = boundary.height / 2;
        northWest = new QuadTreeNode({boundary.topLeftX, boundary.topLeftY, halfWidth, halfHeight});
        northEast = new QuadTreeNode({boundary.topLeftX + halfWidth, boundary.topLeftY, halfWidth, halfHeight});
        southWest = new QuadTreeNode({boundary.topLeftX, boundary.topLeftY + halfHeight, halfWidth, halfHeight});
        southEast = new QuadTreeNode({boundary.topLeftX + halfWidth, boundary.topLeftY + halfHeight, halfWidth, halfHeight});

        for (unsigned int index : rectangleIndices)
        {
            northWest->insert(rectangles, index);
            northEast->insert(rectangles, index);
            southWest->insert(rectangles, index);
            southEast->insert(rectangles, index);
        }
        rectangleIndices.clear();
    }

    unsigned int checkIntersections(const vector<Rectangle>& rectangles, int level)
    {
        // cout << "Level " << level << ": ";
        unsigned int nOfIntersections = 0;
        for (unsigned int i = 0; i < rectangleIndices.size(); ++i)
        {
            // cout << rectangleIndices[i] << " ";
            for (unsigned int j = i + 1; j < rectangleIndices.size(); ++j)
            {
                if (rectangles[rectangleIndices[i]].doesRecIntersect(rectangles[rectangleIndices[j]]))
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
        if (_bound.doesRecIntersect(rectangle) == false)
            return ;
        rectangles.push_back(rectangle);
        _root.insert(rectangles, rectangles.size() - 1);
    }
    unsigned int checkIntersections()
    {
        return (_root.checkIntersections(rectangles));
    }
};

// class ImprovedQuadTree
// {
//     vector<Rectangle> rectangles;
//     Rectangle _bound;
//     ImprovedQuadTreeNode _root;
// public:
//     ImprovedQuadTree(const Rectangle& bound)
//         : _bound(bound),
//         _root(bound)
//     {}

//     void 
// };

class ImprovedQuadTree
{
    vector<Rectangle> rectangles;
    Rectangle _bound;
    const unsigned int _nodeCapacity;

    // todo:
    // change level type to char for smaller bucket size
    // check bucket size for regions
    unordered_map<uint8_t, unordered_map<uint64_t, vector<unsigned int>>> levelsToRegions; // Level -> RegionIndex -> vector of Rectangle indices
public:
    ImprovedQuadTree(const Rectangle& bound)
        : _bound(bound),
        _nodeCapacity(NODE_CAPACITY)
        {}
    void insert(const Rectangle& rectangle)
    {
        if (_bound.doesRecIntersect(rectangle) == false)
            return ;
        rectangles.push_back(rectangle);
        insert(rectangles.size() - 1, 0, 0);
    }
    unsigned int checkIntersections()
    {
        unsigned int nOfIntersections = 0;
        for (const auto& levels : levelsToRegions)
        {
            // cout << "Level: " << levels.first << " ";
            for (const auto& regions : levels.second)
            {
                const auto& region = regions.second;
                // cout << "Region " << regions.first << ": ";
                for (unsigned int i = 0; i < region.size(); ++i)
                {
                    // cout << region[i] << " ";
                    for (unsigned int j = i + 1; j < region.size(); ++j)
                    {
                        if (rectangles[region[i]].doesRecIntersect(rectangles[region[j]]))
                        {
                            ++nOfIntersections;
                        }
                    }
                }
            }
            // cout << endl;
        }

        return (nOfIntersections);
    }

private:
    bool insert(unsigned int rectangleIndex, uint8_t level, unsigned long int regionIndex)
    {
        if (level > 31)
        {
            LOG("yo level is too high");
            exit(1);
        }

        int width = (int)_bound.width / pow2(level);
        int height = (int)_bound.height / pow2(level);
        int topLeftX = 0;
        int topLeftY = 0;
        for (unsigned long startBit = pow4(level - 1); startBit > 0; startBit >>= 2)
        {
            topLeftX <<= 1;
            topLeftY <<= 1;
            topLeftX += ((regionIndex & startBit) > 0 ? 1 : 0);
            topLeftY += ((regionIndex & (startBit << 1)) > 0 ? 1 : 0);
        }
        topLeftX *= width;
        topLeftY *= height;

        Rectangle curBound = {topLeftX, topLeftY, width, height};

        if (curBound.doesRecIntersect(rectangles[rectangleIndex]) == false)
            return (false);
        
        // if next level does not exist under current region
        if (levelsToRegions.count(level + 1) == 0 || levelsToRegions[level + 1].count(regionIndex * 4) == 0)
        {
            // current region's capacity hasn't been reached yet -> add
            if (levelsToRegions[level][regionIndex].size() < _nodeCapacity)
            {
                levelsToRegions[level][regionIndex].push_back(rectangleIndex);
                return (true);
            }
            // create it and insert current regions rectangle indices
            auto& currentRectangles = levelsToRegions[level][regionIndex];
            for (unsigned int recIndex : currentRectangles)
            {
                insert(recIndex, level + 1, (regionIndex << 2));
                insert(recIndex, level + 1, (regionIndex << 2) + 1);
                insert(recIndex, level + 1, (regionIndex << 2) + 2);
                insert(recIndex, level + 1, (regionIndex << 2) + 3);
            }
            // delete the current region's indices
            currentRectangles.clear();
        }

        // insert to next level regions, until one of those insertions succeeds
        insert(rectangleIndex, level + 1, (regionIndex << 2));
        insert(rectangleIndex, level + 1, (regionIndex << 2) + 1);
        insert(rectangleIndex, level + 1, (regionIndex << 2) + 2);
        insert(rectangleIndex, level + 1, (regionIndex << 2) + 3);

        return (false);
    }
};

class Grid
{
    const uint8_t _gridLimit;
    array<vector<uint32_t>, UINT16_MAX> _grids;
    Rectangle _bound;
    vector<Rectangle> _rectangles;
public:
    Grid(const Rectangle& bound)
        : _gridLimit(10),
        _bound(bound)
    {}

    void insert(const Rectangle& rectangle)
    {
        if (_bound.doesRecIntersect(rectangle) == false)
            return ;
        _rectangles.push_back(rectangle);
        insert(_rectangles.size() - 1);
    }

    uint32_t checkIntersections(void)
    {
        uint32_t nOfIntersections = 0;
        for (const auto& grid : _grids)
        {
            for (uint32_t i = 0; i < grid.size(); ++i)
            {
                for (uint32_t j = i + 1; j < grid.size(); ++j)
                {
                    if (_rectangles[grid[i]].doesRecIntersect(_rectangles[grid[j]]))
                    {
                        ++nOfIntersections;
                    }
                }
            }
        }

        return (nOfIntersections);
    }
private:
    bool insert(uint32_t rectangleIndex)
    {
        float cellWidth = (float)_bound.width / 256.0f;
        float cellHeight = (float)_bound.height / 256.0f;
        Rectangle rectangle = _rectangles[rectangleIndex];
        // Bounds checking
        if (rectangle.topLeftX < _bound.topLeftX)
        {
            rectangle.topLeftX = _bound.topLeftX;
        }
        if (rectangle.topLeftY < _bound.topLeftY)
        {
            rectangle.topLeftY = _bound.topLeftY;
        }
        if (rectangle.topLeftX + rectangle.width >= _bound.topLeftX + _bound.width)
        {
            rectangle.width = _bound.topLeftX + _bound.width - rectangle.topLeftX - 1;
        }
        if (rectangle.topLeftY + rectangle.height >= _bound.topLeftY + _bound.height)
        {
            rectangle.height = _bound.topLeftY + _bound.height - rectangle.topLeftY - 1;
        }
        uint16_t topLeft = ((uint16_t)((rectangle.topLeftY -_bound.topLeftY) / cellHeight) << 8)
            + (uint16_t)((rectangle.topLeftX -_bound.topLeftX) / cellWidth);
        uint16_t topRight = ((uint16_t)((rectangle.topLeftY -_bound.topLeftY) / cellHeight) << 8)
            + (uint16_t)((rectangle.topLeftX + rectangle.width -_bound.topLeftX) / cellWidth);
        uint16_t botLeft = ((uint16_t)((rectangle.topLeftY + rectangle.height -_bound.topLeftY) / cellHeight) << 8)
            + (uint16_t)((rectangle.topLeftX -_bound.topLeftX) / cellWidth);
        uint16_t botRight = ((uint16_t)((rectangle.topLeftY + rectangle.height -_bound.topLeftY) / cellHeight) << 8)
            + (uint16_t)((rectangle.topLeftX + rectangle.width -_bound.topLeftX) / cellWidth);

        // LOG(_rectangles[rectangleIndex]);
        // LOG(topLeft);
        // LOG(topRight);
        // LOG(botLeft);
        // LOG(botRight);

        for (uint16_t y = 0; y <= (botLeft - topLeft) / 256; ++y)
        {
            for (uint16_t x = topLeft + y * 256; x <= topRight; ++x)
            {
                _grids[x + y].push_back(rectangleIndex);
            }
        }

        return (false);
    }
};

float myRand(float low, float high)
{
    return (low + static_cast <float> (rand()) / static_cast <float>(RAND_MAX) * (high - low));
}

int myRand(int low, int high)
{
    return (rand() % (high - low + 1) + low);
}

int main()
{
    pow2(0);
    pow4(0);
    srand(42);
    int low = 0;
    int high = 100000;
    unsigned int numberOfInsertions = 100000;
    ImprovedQuadTree qt({low, low, high, high});
    QuadTree qt1({low, low, high, high});
    Grid grid({low, low, high, high});

    vector<Rectangle> rectangles;
    for (unsigned int index = 0; index < numberOfInsertions; ++index)
    {
        rectangles.push_back({myRand(low, high), myRand(low, high), 50, 50});
    }

    LOG("Improved QuadTree");
    LOG("Making quadtree with " << numberOfInsertions << " elements");
    time_t start = clock();
    for (const auto& rectangle : rectangles)
    {
        qt.insert(rectangle);
    }
    LOG("Finished making quadtree, time taken: " << (clock() - start) / (float)(CLOCKS_PER_SEC) << "s");

    LOG("Checking intersections between the " << numberOfInsertions << " rectangles");
    start = clock();
    LOG("Number of intersections: " << qt.checkIntersections());
    LOG("Finished checking for intersections, time taken: " << (clock() - start) / (float)(CLOCKS_PER_SEC) << "s");
    
    LOG("");
    LOG("Regular QuadTree");
    LOG("Making quadtree with " << numberOfInsertions << " elements");
    start = clock();
    for (const auto& rectangle : rectangles)
    {
        qt1.insert(rectangle);
    }
    LOG("Finished making quadtree, time taken: " << (clock() - start) / (float)(CLOCKS_PER_SEC) << "s");

    LOG("Checking intersections between the " << numberOfInsertions << " rectangles");
    start = clock();
    LOG("Number of intersections: " << qt1.checkIntersections());
    LOG("Finished checking for intersections, time taken: " << (clock() - start) / (float)(CLOCKS_PER_SEC) << "s");


    LOG("");
    LOG("Grid");
    LOG("Making grid with " << numberOfInsertions << " elements");
    start = clock();
    for (const auto& rectangle : rectangles)
    {
        // LOG(rectangle);
        grid.insert(rectangle);
    }
    LOG("Finished making grid, time taken: " << (clock() - start) / (float)(CLOCKS_PER_SEC) << "s");

    LOG("Checking intersections between the " << numberOfInsertions << " rectangles");
    start = clock();
    LOG("Number of intersections: " << grid.checkIntersections());
    LOG("Finished checking for intersections, time taken: " << (clock() - start) / (float)(CLOCKS_PER_SEC) << "s");
}
