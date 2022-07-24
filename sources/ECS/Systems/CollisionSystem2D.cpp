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
    QuadTree quadTree({0.0f, 0.0f, (float)_window->getWidth(), (float)_window->getHeight()}, 5, _coordinator);
    for (auto entity : entities)
    {
        auto& velocityComponent = _coordinator->getComponent<VelocityComponent2D>(entity);
        auto& positionComponent = _coordinator->getComponent<PositionComponent2D>(entity);
        auto& rectangleColliderComponent = _coordinator->getComponent<RectangleColliderComponent>(entity);
        auto& modelMatrixComponent = _coordinator->getComponent<ModelMatrixComponent>(entity);

        rectangleColliderComponent.topLeftX = positionComponent.p[0];
        rectangleColliderComponent.topLeftY = positionComponent.p[1];

        if (rectangleColliderComponent.topLeftX + dt * velocityComponent.v[0] < 0.0f ||
            rectangleColliderComponent.topLeftX + rectangleColliderComponent.width + dt * velocityComponent.v[0] > (float)_window->getWidth())
        {
            velocityComponent.v[0] *= -1.0f;
        }
        if (rectangleColliderComponent.topLeftY + dt * velocityComponent.v[1] < 0.0f ||
            rectangleColliderComponent.topLeftY + rectangleColliderComponent.height + dt * velocityComponent.v[1] > (float)_window->getHeight())
        {
            velocityComponent.v[1] *= -1.0f;
        }

        positionComponent.p += dt * velocityComponent.v;
        modelMatrixComponent.m *= translation_matrix(positionComponent.p);
    }
    for (auto entity : entities)
    {
        quadTree.insert(entity);
    }
    quadTree.checkIntersections();
    // _coordinator->print();
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

QuadTree::QuadTree(const RectangleColliderComponent& boundary, uint8 _nodeCapacity, Coordinator *coordinator)
    : _nodeCapacity(_nodeCapacity),
      _boundary(boundary),
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
    if (_boundary.doesIntersect(_coordinator->getComponent<RectangleColliderComponent>(rectangleIndex)) == false)
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

void QuadTree::subdivide(void)
{
    float halfWidth = _boundary.width / 2.0f;
    float halfHeight = _boundary.height / 2.0f;
    _northWest = new QuadTree({_boundary.topLeftX, _boundary.topLeftY, halfWidth, halfHeight}, _nodeCapacity, _coordinator);
    _northEast = new QuadTree({_boundary.topLeftX + halfWidth, _boundary.topLeftY, halfWidth, halfHeight}, _nodeCapacity, _coordinator);
    _southWest = new QuadTree({_boundary.topLeftX, _boundary.topLeftY + halfHeight, halfWidth, halfHeight}, _nodeCapacity, _coordinator);
    _southEast = new QuadTree({_boundary.topLeftX + halfWidth, _boundary.topLeftY + halfHeight, halfWidth, halfHeight}, _nodeCapacity, _coordinator);

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
    static vector<unordered_set<uint32>> collidedPairs(300, unordered_set<uint32>());
    uint32 nOfIntersections = 0;
    for (uint8 i = 0; i < _rectangleIndices.size(); ++i)
    {
        for (uint8 j = i + 1; j < _rectangleIndices.size(); ++j)
        {
            if (collidedPairs[_rectangleIndices[i]].count(_rectangleIndices[j]) == 0 &&
                _coordinator->getComponent<RectangleColliderComponent>(_rectangleIndices[i]).
                    doesIntersect(_coordinator->getComponent<RectangleColliderComponent>(_rectangleIndices[j])))
            {
                collidedPairs[_rectangleIndices[i]].insert(_rectangleIndices[j]);
                collidedPairs[_rectangleIndices[j]].insert(_rectangleIndices[i]);

                const auto& velocityOne = _coordinator->getComponent<VelocityComponent2D>(_rectangleIndices[i]);
                const auto& velocityTwo = _coordinator->getComponent<VelocityComponent2D>(_rectangleIndices[j]);

                /*
                 * Check which side the collision happens
                 * If dot product is positive -> they are going in the same direction
                 * If dot product is negative, flip velocities, otherwise flip one velocity
                 * and with the other do a velocity average, then turn its size back to what it was
                 */
                DIRECTION directionOne = vectorDirection(velocityOne.v);
                DIRECTION directionTwo = vectorDirection(velocityTwo.v);

                _coordinator->updateComponent<VelocityComponent2D>(_rectangleIndices[i], velocityTwo);
                _coordinator->updateComponent<VelocityComponent2D>(_rectangleIndices[j], velocityOne);
                ++nOfIntersections;
            }
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
