#ifndef PERSPECTIVECAMERALAYER_HPP
# define PERSPECTIVECAMERALAYER_HPP

# include "Interfaces/ILayer.hpp"
# include "Applications/MacApplication.hpp"
# include "Cameras/PerspectiveCamera.hpp"

namespace NAMESPACE
{

class PerspectiveCameraLayer : public ILayer
{
MacApplication *_macApplication;
PerspectiveCamera *_camera;
public:
    PerspectiveCameraLayer(MacApplication *macApplication);
    virtual void onAttach() override;
    virtual void onDetach() override;
    virtual void onEvent(IEvent &e) override;
    virtual void onUpdate(float deltaTime) override;
    virtual void onRender() override;

    inline PerspectiveCamera *getCamera() const { return (_camera); }
};

}

#endif
