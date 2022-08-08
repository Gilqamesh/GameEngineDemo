#ifndef COLLISIONDEVLAYER_HPP
# define COLLISIONDEVLAYER_HPP

# include "Interfaces/ILayer.hpp"
# include "Windows/MacWindow.hpp"
# include "Managers/ObjectCoordinator.hpp"
# include "ECS/Components/Colliders/RectangleColliderComponent.hpp"
# include "Generators/ParticleGenerator.hpp"

# include "Debug/Stopwatch.hpp"

namespace GilqEngine
{

class CollisionDevLayer : public ILayer
{
    MacWindow         *_window;
    ObjectCoordinator _objectCoordinator;

    vector<Entity> _rects;
    vector<RectangleColliderComponent> _rectangles;

    Entity _mouseRect;
    RectangleColliderComponent _mouseRectangle;
    
    Entity _line;

    Entity _circle;

    Entity _normalLine;

    Stopwatch _stopwatch;

    GeneratorId _mouseParticleGenerator;
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
