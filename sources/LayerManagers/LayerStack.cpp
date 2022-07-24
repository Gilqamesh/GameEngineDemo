#include "LayerManagers/LayerStack.hpp"
#include "Interfaces/ILayer.hpp"

namespace GilqEngine
{

LayerStack::LayerStack()
    : numberOfRegularLayers(0)
{
    TRACE();
}

LayerStack::~LayerStack()
{
    TRACE();
    for (vector<ILayer *>::iterator it = begin(); it != end(); ++it)
        (*it)->onDetach();
}

void LayerStack::pushLayer(ILayer *layer)
{
    TRACE();
    if (layer->getType() == LayerType::overlay)
    {
        layers.push_back(layer);
    }
    else if (layer->getType() == LayerType::regular)
    {
        layers.emplace(layers.begin() + numberOfRegularLayers++, layer);
    }
}

void LayerStack::popLayer(ILayer *layer)
{
    TRACE();
    if (layer->getType() == LayerType::overlay)
    {
        vector<ILayer *>::iterator it = find(layers.begin(), layers.begin() + numberOfRegularLayers, layer);
        if (it != layers.begin() + numberOfRegularLayers)
        {
            layers.erase(it);
            --numberOfRegularLayers;
        }
    }
    else if (layer->getType() == LayerType::regular)
    {
        vector<ILayer *>::iterator it = find(layers.begin() + numberOfRegularLayers, layers.end(), layer);
        if (it != layers.end())
        {
            layers.erase(it);
        }
    }
}

}
