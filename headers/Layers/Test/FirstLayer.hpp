#ifndef FIRSTLAYER_HPP
# define FIRSTLAYER_HPP

# include "Interfaces/ILayer.hpp"
# include "Applications/MacApplication.hpp"
# include "Cameras/PerspectiveCamera.hpp"

namespace NAMESPACE
{

class FirstLayer : public ILayer
{
MacApplication *application;
PerspectiveCamera *camera;
public:
    FirstLayer(MacApplication *macApplication);
    virtual void onAttach() override;
    virtual void onDetach() override;
    virtual void onEvent(IEvent &e) override;
    virtual void onUpdate(float deltaTime) override;
    virtual void onRender() override;
};

}

#endif
