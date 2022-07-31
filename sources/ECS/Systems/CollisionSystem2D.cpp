#include "ECS/Systems/CollisionSystem2D.hpp"
#include "ECS/Coordinator.hpp"
#include "ECS/Components/PositionComponent2D.hpp"
#include "ECS/Components/ModelMatrixComponent.hpp"
#include "Log.hpp"

namespace GilqEngine
{

CollisionSystem2D::CollisionSystem2D(Coordinator *coordinator, IWindow *window)
    : ISystem(coordinator),
      _window(window)
{

}

void CollisionSystem2D::onUpdate(float dt)
{
    (void)dt;
    vector<unordered_set<uint32>> collidedPairs(3000, unordered_set<uint32>());
    QuadTree quadTree({Vector<float, 2>(0.0f, 0.0f), Vector<float, 2>((float)_window->getWidth(), (float)_window->getHeight())}, 5, _coordinator, dt, collidedPairs);
    for (auto entity : entities)
    {
        quadTree.insert(entity);
    }
    quadTree.checkIntersections();
    for (auto entity : entities)
    {
        auto& velocityComponent = _coordinator->getComponent<VelocityComponent2D>(entity);
        auto& positionComponent = _coordinator->getComponent<PositionComponent2D>(entity);
        auto& rectangleColliderComponent = _coordinator->getComponent<RectangleColliderComponent>(entity);

        if (rectangleColliderComponent.position[0] + dt * velocityComponent.v[0] < 0.0f ||
            rectangleColliderComponent.position[0] + rectangleColliderComponent.size[0] + dt * velocityComponent.v[0] > (float)_window->getWidth())
        {
            velocityComponent.v[0] *= -1.0f;
        }
        if (rectangleColliderComponent.position[1] + dt * velocityComponent.v[1] < 0.0f ||
            rectangleColliderComponent.position[1] + rectangleColliderComponent.size[1] + dt * velocityComponent.v[1] > (float)_window->getHeight())
        {
            velocityComponent.v[1] *= -1.0f;
        }

        positionComponent.p += dt * velocityComponent.v;
        rectangleColliderComponent.position = positionComponent.p;
    }
}

void CollisionSystem2D::onRender(Shader *shader)
{
    (void)shader;
}

void CollisionSystem2D::setSystemSignature()
{
    ComponentSignature CollisionSystemSignature;
    CollisionSystemSignature.set(_coordinator->getComponentId<RectangleColliderComponent>(), true);
    CollisionSystemSignature.set(_coordinator->getComponentId<VelocityComponent2D>(), true);
    CollisionSystemSignature.set(_coordinator->getComponentId<PositionComponent2D>(), true);
    CollisionSystemSignature.set(_coordinator->getComponentId<ModelMatrixComponent>(), true);
    _coordinator->setSystemSignature<CollisionSystem2D>(CollisionSystemSignature);
}

void CollisionSystem2D::registerComponents()
{
    _coordinator->registerComponent<RectangleColliderComponent>();
    _coordinator->registerComponent<VelocityComponent2D>();
    _coordinator->registerComponent<PositionComponent2D>();
    _coordinator->registerComponent<ModelMatrixComponent>();
}

QuadTree::QuadTree(
    const RectangleColliderComponent& boundary,
    uint8 _nodeCapacity,
    Coordinator *coordinator,
    float dt,
    vector<unordered_set<uint32>> &collidedPairs)
    : _nodeCapacity(_nodeCapacity),
      _boundary(boundary),
      _dt(dt),
      _northWest(nullptr),
      _northEast(nullptr),
      _southWest(nullptr),
      _southEast(nullptr),
      _coordinator(coordinator),
      _collidedPairs(collidedPairs)
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
    if (nextPosition.p[0] < extendedRectangle.position[0])
    {
        extendedRectangle.position[0] = nextPosition.p[0];
    }
    if (nextPosition.p[1] < extendedRectangle.position[1])
    {
        extendedRectangle.position[1] = nextPosition.p[1];
    }

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
    _northWest = new QuadTree({_boundary.position, halfSize}, _nodeCapacity, _coordinator, _dt, _collidedPairs);
    _northEast = new QuadTree({Vector<float, 2>(_boundary.position[0] + halfSize[0], _boundary.position[1]), halfSize}, _nodeCapacity, _coordinator, _dt, _collidedPairs);
    _southWest = new QuadTree({Vector<float, 2>(_boundary.position[0], _boundary.position[1] + halfSize[1]), halfSize}, _nodeCapacity, _coordinator, _dt, _collidedPairs);
    _southEast = new QuadTree({_boundary.position + halfSize, halfSize}, _nodeCapacity, _coordinator, _dt, _collidedPairs);

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
            if (_collidedPairs[_rectangleIndices[i]].count(_rectangleIndices[j]))
                continue ;
            // check dynamic i against dynamic j

            // construct i's and j's rectangles based on their next position
            RectangleColliderComponent rec_i = _coordinator->getComponent<RectangleColliderComponent>(_rectangleIndices[i]);
            RectangleColliderComponent rec_j = _coordinator->getComponent<RectangleColliderComponent>(_rectangleIndices[j]);

            // get i's and j's velocities
            VelocityComponent2D &vel_i = _coordinator->getComponent<VelocityComponent2D>(_rectangleIndices[i]);
            VelocityComponent2D &vel_j = _coordinator->getComponent<VelocityComponent2D>(_rectangleIndices[j]);

            Vector<float, 2> contactPoint;
            Vector<float, 2> contactNormal;
            float tHitNear;

            Vector<float, 2> old_i = vel_i.v;
            Vector<float, 2> old_j = vel_j.v;
            if (rec_i.dynamicRecIntersect(vel_i.v - vel_j.v, rec_j, contactPoint, contactNormal, tHitNear, _dt))
            {
                // bounce
                // if (contactNormal[0] > 0.0f)
                // {
                //     if (vel_i.v[0] < 0.0f)
                //     {
                //         vel_i.v[0] = old_j[0];
                //         // vel_i.v[0] *= -1.0f;
                //     }
                //     if (vel_j.v[0] > 0.0f)
                //     {
                //         vel_j.v[0] = old_i[0];
                //         // vel_j.v[0] *= -1.0f;
                //     }
                // }
                // else if (contactNormal[0] < 0.0f)
                // {
                //     if (vel_i.v[0] > 0.0f)
                //     {
                //         vel_i.v[0] = old_j[0];
                //         // vel_i.v[0] *= -1.0f;
                //     }
                //     if (vel_j.v[0] < 0.0f)
                //     {
                //         vel_j.v[0] = old_i[0];
                //         // vel_j.v[0] *= -1.0f;
                //     }
                // }
                // else if (contactNormal[1] > 0.0f)
                // {
                //     if (vel_i.v[1] < 0.0f)
                //     {
                //         vel_i.v[1] = old_j[1];
                //         // vel_i.v[1] *= -1.0f;
                //     }
                //     if (vel_j.v[1] > 0.0f)
                //     {
                //         vel_j.v[1] = old_i[1];
                //         // vel_j.v[1] *= -1.0f;
                //     }
                // }
                // else if (contactNormal[1] < 0.0f)
                // {
                //     if (vel_i.v[1] > 0.0f)
                //     {
                //         vel_i.v[1] = old_j[1];
                //         // vel_i.v[1] *= -1.0f;
                //     }
                //     if (vel_j.v[1] < 0.0f)
                //     {
                //         vel_j.v[1] = old_i[1];
                //         // vel_j.v[1] *= -1.0f;
                //     }
                // }

                if (contactNormal[0] != 0.0f)
                {
                    swap(vel_i.v[0], vel_j.v[0]);
                }
                else if (contactNormal[1] != 0.0f)
                {
                    swap(vel_i.v[1], vel_j.v[1]);
                }

                // both i's and j's collision against each other are resolved after this
                _collidedPairs[_rectangleIndices[i]].insert(_rectangleIndices[j]);
                _collidedPairs[_rectangleIndices[j]].insert(_rectangleIndices[i]);
            }

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

}
