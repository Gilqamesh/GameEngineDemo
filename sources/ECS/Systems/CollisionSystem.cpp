#include "ECS/Systems/CollisionSystem.hpp"
#include "ECS/Systems/"
#include "ECS/Coordinator.hpp"
#include "ECS/Components/PositionComponent.hpp"
#include "Log.hpp"

namespace GilqEngine
{

CollisionSystem::CollisionSystem(Coordinator *coordinator)
    : ISystem(coordinator)
{

}

void CollisionSystem::onUpdate(float dt)
{
    (void)dt;
    QuadTree quadTree({0.0f, 0.0f, 1600.0f, 900.0f}, 5);
    ComponentArray<RectangleColliderComponent> *rectangleComponents = _coordinator->getComponents<RectangleColliderComponent>();
    ComponentArray<VelocityComponent> *velocityComponents = _coordinator->getComponents<VelocityComponent>();
    for (auto entity : entities)
    {
        const auto& positionComponent = _coordinator->getComponent<PositionComponent>(entity);
        auto& rectangleColliderComponent = _coordinator->getComponent<RectangleColliderComponent>(entity);
        rectangleColliderComponent.topLeftX = positionComponent.p[0];
        rectangleColliderComponent.topLeftY = positionComponent.p[2];
    }
    for (auto entity : entities)
    {
        quadTree.insert(rectangleComponents, entity);
    }
    LOG(quadTree.checkIntersections(rectangleComponents, velocityComponents));
}

void CollisionSystem::onRender(Shader *shader)
{
    (void)shader;
}

void CollisionSystem::setSystemSignature()
{
    ComponentSignature CollisionSystemSignature;
    CollisionSystemSignature.set(_coordinator->getComponentId<RectangleColliderComponent>(), true);
    CollisionSystemSignature.set(_coordinator->getComponentId<VelocityComponent>(), true);
    CollisionSystemSignature.set(_coordinator->getComponentId<PositionComponent>(), true);
    _coordinator->setSystemSignature<CollisionSystem>(CollisionSystemSignature);
}

void CollisionSystem::registerComponents()
{
    _coordinator->registerComponent<RectangleColliderComponent>();
    _coordinator->registerComponent<VelocityComponent>();
    _coordinator->registerComponent<PositionComponent>();
}

QuadTree::QuadTree(const RectangleColliderComponent& boundary, uint8 _nodeCapacity)
    : _nodeCapacity(_nodeCapacity),
          _boundary(boundary),
          _northWest(nullptr),
          _northEast(nullptr),
          _southWest(nullptr),
          _southEast(nullptr)
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

bool QuadTree::insert(ComponentArray<RectangleColliderComponent> *rectangleComponents, Entity rectangleIndex)
{
    if (_boundary.doesIntersect(rectangleComponents->getData(rectangleIndex)) == false)
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
        subdivide(rectangleComponents);
    }

    _northWest->insert(rectangleComponents, rectangleIndex);
    _northEast->insert(rectangleComponents, rectangleIndex);
    _southWest->insert(rectangleComponents, rectangleIndex);
    _southEast->insert(rectangleComponents, rectangleIndex);

    return (false);
}

uint32 QuadTree::checkIntersections(
    ComponentArray<RectangleColliderComponent> *rectangleComponents,
    ComponentArray<VelocityComponent> *velocityComponents)
{
    return (checkIntersections(rectangleComponents, velocityComponents, 0));
}

void QuadTree::subdivide(ComponentArray<RectangleColliderComponent> *rectangleComponents)
{
    float halfWidth = _boundary.width / 2.0f;
    float halfHeight = _boundary.height / 2.0f;
    _northWest = new QuadTree({_boundary.topLeftX, _boundary.topLeftY, halfWidth, halfHeight}, _nodeCapacity);
    _northEast = new QuadTree({_boundary.topLeftX + halfWidth, _boundary.topLeftY, halfWidth, halfHeight}, _nodeCapacity);
    _southWest = new QuadTree({_boundary.topLeftX, _boundary.topLeftY + halfHeight, halfWidth, halfHeight}, _nodeCapacity);
    _southEast = new QuadTree({_boundary.topLeftX + halfWidth, _boundary.topLeftY + halfHeight, halfWidth, halfHeight}, _nodeCapacity);

    for (Entity rectangleIndex : _rectangleIndices)
    {
        _northWest->insert(rectangleComponents, rectangleIndex);
        _northEast->insert(rectangleComponents, rectangleIndex);
        _southWest->insert(rectangleComponents, rectangleIndex);
        _southEast->insert(rectangleComponents, rectangleIndex);
    }
    _rectangleIndices.clear();
}

uint32 QuadTree::checkIntersections(
    ComponentArray<RectangleColliderComponent> *rectangleComponents,
    ComponentArray<VelocityComponent> *velocityComponents,
    int level)
{
    uint32 nOfIntersections = 0;
    for (uint16 i = 0; i < _rectangleIndices.size(); ++i)
    {
        for (uint16 j = i + 1; j < _rectangleIndices.size(); ++j)
        {
            if (rectangleComponents->getData(_rectangleIndices[i]).doesIntersect(rectangleComponents->getData(_rectangleIndices[j])))
            {
                VelocityComponent velocity1 = velocityComponents->getData(_rectangleIndices[i]);
                VelocityComponent velocity2 = velocityComponents->getData(_rectangleIndices[j]);

                velocityComponents->setData(_rectangleIndices[i], velocity2);
                velocityComponents->setData(_rectangleIndices[j], velocity1);
                ++nOfIntersections;
                break ;
            }
        }
    }
    if (_northWest != nullptr)
    {
        nOfIntersections += _northWest->checkIntersections(rectangleComponents, velocityComponents, level + 1);
        nOfIntersections += _northEast->checkIntersections(rectangleComponents, velocityComponents, level + 1);
        nOfIntersections += _southWest->checkIntersections(rectangleComponents, velocityComponents, level + 1);
        nOfIntersections += _southEast->checkIntersections(rectangleComponents, velocityComponents, level + 1);
    }

    return (nOfIntersections);
}

}
