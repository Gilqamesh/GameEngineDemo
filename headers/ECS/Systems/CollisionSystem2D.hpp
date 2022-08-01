#ifndef COLLISIONSYSTEM2D_HPP
# define COLLISIONSYSTEM2D_HPP

# include "ECS/Interfaces/ISystem.hpp"
# include "ECS/Components/Colliders/RectangleColliderComponent.hpp"
# include "ECS/Components/VelocityComponent2D.hpp"
# include "ECS/ComponentArray.hpp"
# include "Interfaces/IWindow.hpp"

namespace GilqEngine
{

class CollisionSystem2D : public ISystem
{
    IWindow *_window;
public:
    CollisionSystem2D(Coordinator *coordinator, IWindow *window);
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

}

#endif
