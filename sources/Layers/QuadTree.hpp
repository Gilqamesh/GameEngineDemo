#ifndef QUADTREE_HPP
# define QUADTREE_HPP

# include <iostream>
# include <iomanip>
# include <stack>
# include <string>
# include <vector>
# include <unordered_map>
# include <cmath>

# define NODE_CAPACITY 5

using namespace std;

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
        if (boundary.doesIntersect(rectangles[index]) == false)
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
        cout << "Level " << level << ": ";
        unsigned int nOfIntersections = 0;
        for (unsigned int i = 0; i < rectangleIndices.size(); ++i)
        {
            cout << rectangleIndices[i] << " ";
            for (unsigned int j = i + 1; j < rectangleIndices.size(); ++j)
            {
                if (rectangles[rectangleIndices[i]].doesIntersect(rectangles[rectangleIndices[j]]))
                {
                    ++nOfIntersections;
                }
            }
        }
        cout << endl;
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

class ImprovedQuadTree
{
    vector<Rectangle> rectangles;
    Rectangle _bound;
    const unsigned int _nodeCapacity;

    // todo:
    // change level type to char for smaller bucket size
    // check bucket size for regions
    unordered_map<unsigned int, unordered_map<unsigned long int, vector<unsigned int>>> levelsToRegions; // Level -> RegionIndex -> vector of Rectangle indices
public:
    ImprovedQuadTree(const Rectangle& bound)
        : _bound(bound),
        _nodeCapacity(NODE_CAPACITY)
        {}
    void insert(const Rectangle& rectangle)
    {
        if (_bound.doesIntersect(rectangle) == false)
            return ;
        rectangles.push_back(rectangle);
        insert(rectangles.size() - 1, 0, 0);
    }
    unsigned int checkIntersections()
    {
        unsigned int nOfIntersections = 0;
        for (const auto& levels : levelsToRegions)
        {
            LOG("Level " << levels.first << ": ");
            for (const auto& regions : levels.second)
            {
                const auto& region = regions.second;
                cout << "Region " << regions.first % 4 << ": ";
                for (unsigned int i = 0; i < region.size(); ++i)
                {
                    cout << region[i] << " ";
                    for (unsigned int j = i + 1; j < region.size(); ++j)
                    {
                        if (rectangles[region[i]].doesIntersect(rectangles[region[j]]))
                        {
                            ++nOfIntersections;
                        }
                    }
                }
                LOG("");
            }
        }

        return (nOfIntersections);
    }

/*
level 1:
0, 2 -> 0
1, 3 -> 1
level 2:
0, 2 -> 0
1, 3 -> 1
4, 6 -> 2
5, 7 -> 3
8, 10 -> 0
9, 11 -> 1
12, 14 -> 2
13, 15 -> 3
x % 2^(level + 1) / % 2 
*/

private:
    bool insert(unsigned int rectangleIndex, unsigned int level, unsigned long int regionIndex)
    {
        int width = (int)_bound.width / (unsigned long)pow(2, level);
        int height = (int)_bound.height / (unsigned long)pow(2, level);
        int topLeftY = regionIndex / (unsigned long)pow(2, level) * height;
        
        int topLeftX = (regionIndex % (unsigned long)pow(2, level) % 2) * width;
        Rectangle curBound = {(float)topLeftX, (float)topLeftY, (float)width, (float)height};
        LOG("Level " << level << ", Region Index: " << regionIndex << ", curBound: " << curBound);

        if (curBound.doesIntersect(rectangles[rectangleIndex]) == false)
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
                insert(recIndex, level + 1, 4 * regionIndex);
                insert(recIndex, level + 1, 4 * regionIndex + 1);
                insert(recIndex, level + 1, 4 * regionIndex + 2);
                insert(recIndex, level + 1, 4 * regionIndex + 3);
            }
            // delete the current region's indices
            currentRectangles.clear();
        }

        // insert to next level regions, until one of those insertions succeeds
        insert(rectangleIndex, level + 1, 4 * regionIndex);
        insert(rectangleIndex, level + 1, 4 * regionIndex + 1);
        insert(rectangleIndex, level + 1, 4 * regionIndex + 2);
        insert(rectangleIndex, level + 1, 4 * regionIndex + 3);

        return (false);
    }
};

#endif
