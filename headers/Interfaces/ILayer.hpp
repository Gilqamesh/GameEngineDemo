#ifndef ILAYER_HPP
# define ILAYER_HPP

# include "pch.hpp"

namespace GilqEngine
{

class IEvent;

enum class LayerType
{
    regular,
    overlay
};

class ILayer
{
string     _name;
LayerType  layerType;
public:
    ILayer(const string &name, LayerType layerType);
    virtual ~ILayer() = default;
    virtual void onAttach() = 0; /* Controlled by application, should initialize objects on the layer */
    virtual void onDetach() = 0; /* Controlled by application, should deinitialize objects on the layer */
    virtual void onEvent(IEvent &e) = 0; /* Update that gets called from IApplication */
    virtual void onUpdate(float deltaTime) = 0; /* Update layer information */
    virtual void onRender() = 0; /* Render layer */

    inline LayerType getType() { return (layerType); }
    inline const string &getName() { return (_name); }
};

}

#endif
