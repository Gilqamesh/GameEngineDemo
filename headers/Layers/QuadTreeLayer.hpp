#ifndef QUADTREELAYER_HPP
# define QUADTREELAYER_HPP

# include "Interfaces/ILayer.hpp"
# include "Managers/ObjectCoordinator.hpp"
# include "Windows/MacWindow.hpp"

namespace GilqEngine
{

class QuadTreeLayer : public ILayer
{
    MacWindow         *_window;
    ObjectCoordinator _objectCoordinator;
public:
    QuadTreeLayer(MacWindow *macWindow);
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
