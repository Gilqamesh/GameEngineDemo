#ifndef COLLISIONSYSTEM_HPP
# define COLLISIONSYSTEM_HPP

# include "ECS/Interfaces/ISystem.hpp"
# include "ECS/Components/Colliders/RectangleColliderComponent.hpp"
# include "ECS/Components/VelocityComponent.hpp"
# include "ECS/ComponentArray.hpp"

namespace GilqEngine
{

class CollisionSystem : public ISystem
{
public:
    CollisionSystem(Coordinator *coordinator);
    virtual void onUpdate(float dt) override;
    virtual void onRender(Shader *shader) override;
    virtual void setSystemSignature() override;
    virtual void registerComponents() override;
};

class QuadTree
{
    vector<Entity> _rectangleIndices;
    const uint8 _nodeCapacity;

    RectangleColliderComponent _boundary;

    QuadTree *_northWest;
    QuadTree *_northEast;
    QuadTree *_southWest;
    QuadTree *_southEast;
public:
    QuadTree(const RectangleColliderComponent& boundary, uint8 nodeCapacity);
    ~QuadTree();

    bool insert(ComponentArray<RectangleColliderComponent> *rectangleComponents, Entity rectangleIndex);
    uint32 checkIntersections(
        ComponentArray<RectangleColliderComponent> *rectangleComponents,
        ComponentArray<VelocityComponent> *velocityComponents);
    // Vector<float, 2> 

private:
    void subdivide(ComponentArray<RectangleColliderComponent> *rectangleComponents);
    uint32 checkIntersections(
        ComponentArray<RectangleColliderComponent> *rectangleComponents,
        ComponentArray<VelocityComponent> *velocityComponents,
        int level);
};

}

#endif
