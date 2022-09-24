#ifndef CLEARWINDOWLAYER_HPP
# define CLEARWINDOWLAYER_HPP

# include "Interfaces/ILayer.hpp"

namespace GilqEngine
{

class ClearWindowLayer : public ILayer
{
    Vector<float, 3> _color;
public:
    ClearWindowLayer(Vector<float, 3> = {1.0f, 1.0f, 1.0f});
    
    virtual void onAttach() override;
    virtual void onDetach() override;
    virtual void onEvent(IEvent &e) override;
    virtual void onUpdate(float deltaTime) override;
    virtual void onRender() override;
};

}

#endif
