#ifndef MODELLOADLAYER_HPP
# define MODELLOADLAYER_HPP

# include "Interfaces/ILayer.hpp"
# include "Windows/MacWindow.hpp"
# include "Interfaces/ICamera.hpp"
# include "Managers/ObjectCoordinator.hpp"
# include "Math/Matrix.hpp"

namespace GilqEngine
{

class ModelLoadLayer : public ILayer
{
MacWindow           *_macWindow;
ICamera             *_camera;
Matrix<float, 4, 4> _projection;

ObjectCoordinator _objectCoordinator;

std::unordered_set<Entity, std::hash<int> > _models;
public:
    ModelLoadLayer(MacWindow *macWindow, ICamera *camera);
    virtual void onAttach() override;
    virtual void onDetach() override;
    virtual void onEvent(IEvent &e) override;
    virtual void onUpdate(float deltaTime) override;
    virtual void onRender() override;
private:
    void loadShaders();
    void loadTextures();
    void loadMaterials();
    void loadModels();
};

}

#endif
