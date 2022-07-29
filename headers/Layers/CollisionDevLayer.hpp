#ifndef COLLISIONDEVLAYER_HPP
# define COLLISIONDEVLAYER_HPP

# include "Interfaces/ILayer.hpp"
# include "Windows/MacWindow.hpp"
# include "Managers/ObjectCoordinator.hpp"
# include "ECS/Components/Colliders/RectangleColliderComponent.hpp"

namespace GilqEngine
{

class CollisionDevLayer : public ILayer
{
    MacWindow         *_window;
    ObjectCoordinator _objectCoordinator;

    Entity _rect;
    RectangleColliderComponent _rectangle;

    Entity _mouseRect;
    RectangleColliderComponent _mouseRectangle;
    
    Entity _line;

    Entity _circle;

    Entity _normalLine;
public:
    CollisionDevLayer(MacWindow *macWindow);
    virtual void onAttach() override;
    virtual void onDetach() override;
    virtual void onEvent(IEvent &e) override;
    virtual void onUpdate(float deltaTime) override;
    virtual void onRender() override;

private:
    void loadShaders(void);
    void loadTextures(void);
    void loadMaterials(void);
    void loadModels(void);
    void registerSystems(void);
};

}

#endif
