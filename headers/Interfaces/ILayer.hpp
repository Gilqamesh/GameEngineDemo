#ifndef ILAYER_HPP
# define ILAYER_HPP

# include "pch.hpp"

namespace NAMESPACE
{

class IApplication;
class IEvent;

enum class LayerType
{
    regular,
    overlay
};

class ILayer
{
public:
    ILayer(IApplication *application, LayerType layerType);
    virtual ~ILayer() = default;
    virtual void onAttach() = 0; /* Register to IApplication as an Observer */
    virtual void onDetach() = 0; /* Unregister */
    virtual void onEvent(IEvent &e) = 0; /* Update that gets called from IApplication */
    virtual void onUpdate(float deltaTime) = 0; /* Update layer information */
    virtual void onRender() = 0; /* Render layer */
    inline LayerType getType() { return (layerType); }
protected:
    IApplication *application;
    LayerType layerType;
};

}

#endif
