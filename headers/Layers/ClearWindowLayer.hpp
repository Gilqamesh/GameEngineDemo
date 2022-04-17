#ifndef CLEARWINDOWLAYER_HPP
# define CLEARWINDOWLAYER_HPP

# include "Interfaces/ILayer.hpp"

namespace NAMESPACE
{

class ClearWindowLayer : public ILayer
{
public:
    ClearWindowLayer();
    virtual void onAttach() override;
    virtual void onDetach() override;
    virtual void onEvent(IEvent &e) override;
    virtual void onUpdate(float deltaTime) override;
    virtual void onRender() override;
};

}

#endif
