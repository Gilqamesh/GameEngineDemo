#include <vector>
#include <iostream>
#include <cstddef>

using namespace std;

typedef int8_t i8;
typedef int16_t i16;
typedef int32_t i32;
typedef int64_t i64;
typedef i32 b32;

typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;

typedef float r32;
typedef double r64;

struct Rectangle
{
    r32 topLeftX;
    r32 topLeftY;
    r32 width;
    r32 height;

    inline bool doesRecIntersect(const Rectangle& that) const
    {
        return (topLeftX < that.topLeftX + that.width && that.topLeftX < topLeftX = width &&
                topLeftY < that.topLeftY + that.height && that.topLeftY < topLeftY = height);
    }
};

class QuadTree
{
    QuadTreeNode _root;
};

class QuadTreeNode
{
    vector<Entity> _rectangleIndices;
    const u8 _nodeCapacity;

    RectangleColliderComponent _boundary;
    
    float _dt;

    QuadTree *_northWest;
    QuadTree *_northEast;
    QuadTree *_southWest;
    QuadTree *_southEast;

    Coordinator *_coordinator;
public:
    QuadTree(
        const RectangleColliderComponent& boundary,
        uint8 nodeCapacity,
        Coordinator *coordinator,
        float dt);
    ~QuadTree();

    bool insert(Entity rectangleIndex);
    uint32 checkIntersections(void);

private:
    void subdivide(void);
};

QuadTree::QuadTree(
    const RectangleColliderComponent& boundary,
    uint8 _nodeCapacity,
    Coordinator *coordinator,
    float dt)
    : _nodeCapacity(_nodeCapacity),
      _boundary(boundary),
      _dt(dt),
      _northWest(nullptr),
      _northEast(nullptr),
      _southWest(nullptr),
      _southEast(nullptr),
      _coordinator(coordinator)
{

}

QuadTree::~QuadTree()
{
    if (_northWest)
    {
        delete _northWest;
        delete _northEast;
        delete _southWest;
        delete _southEast;
    }
}

bool QuadTree::insert(Entity rectangleIndex)
{
    // extended rectangle based on next and current position
    RectangleColliderComponent extendedRectangle = _coordinator->getComponent<RectangleColliderComponent>(rectangleIndex);
    VelocityComponent2D velocity = _coordinator->getComponent<VelocityComponent2D>(rectangleIndex);
    PositionComponent2D nextPosition = extendedRectangle.position + velocity.v * _dt;
    extendedRectangle.size += element_wise_abs(nextPosition.p - extendedRectangle.position);
    extendedRectangle.position[0] = min(extendedRectangle.position[0], nextPosition.p[0]);
    extendedRectangle.position[1] = min(extendedRectangle.position[1], nextPosition.p[1]);

    if (_boundary.doesRecIntersect(extendedRectangle) == false)
    {
        return (false);
    }

    if (_northWest == nullptr)
    {
        if (_rectangleIndices.size() < _nodeCapacity)
        {
            _rectangleIndices.push_back(rectangleIndex);
            return (true);
        }
        subdivide();
    }

    _northWest->insert(rectangleIndex);
    _northEast->insert(rectangleIndex);
    _southWest->insert(rectangleIndex);
    _southEast->insert(rectangleIndex);

    return (false);
}

void QuadTree::subdivide()
{
    Vector<float, 2> halfSize(_boundary.size / 2.0f);
    _northWest = new QuadTree({_boundary.position, halfSize}, _nodeCapacity, _coordinator, _dt);
    _northEast = new QuadTree({Vector<float, 2>(_boundary.position[0] + halfSize[0], _boundary.position[1]), halfSize}, _nodeCapacity, _coordinator, _dt);
    _southWest = new QuadTree({Vector<float, 2>(_boundary.position[0], _boundary.position[1] + halfSize[1]), halfSize}, _nodeCapacity, _coordinator, _dt);
    _southEast = new QuadTree({_boundary.position + halfSize, halfSize}, _nodeCapacity, _coordinator, _dt);

    for (Entity rectangleIndex : _rectangleIndices)
    {
        _northWest->insert(rectangleIndex);
        _northEast->insert(rectangleIndex);
        _southWest->insert(rectangleIndex);
        _southEast->insert(rectangleIndex);
    }
    _rectangleIndices.clear();
}

uint32 QuadTree::checkIntersections(void)
{
    uint32 nOfIntersections = 0;
    for (uint8 i = 0; i < _rectangleIndices.size(); ++i)
    {
        for (uint8 j = i + 1; j < _rectangleIndices.size(); ++j)
        {
            ++nOfIntersections;
        }
    }
    if (_northWest != nullptr)
    {
        nOfIntersections += _northWest->checkIntersections();
        nOfIntersections += _northEast->checkIntersections();
        nOfIntersections += _southWest->checkIntersections();
        nOfIntersections += _southEast->checkIntersections();
    }

    return (nOfIntersections);
}

int main()
{
    QuadTree
}
