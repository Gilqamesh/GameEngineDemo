#include "LayerManagers/LayerStack.hpp"
#include "Interfaces/ILayer.hpp"

namespace NAMESPACE
{

LayerStack::~LayerStack()
{
    for (std::vector<ILayer *>::iterator it = begin(); it != end(); ++it)
        (*it)->onDeatch();
}

void LayerStack::pushLayer(ILayer *layer)
{
    if (layer->getType() == LayerType::overlay)
    {
        layers.push_back(layer);
    }
    else if (layer->getType() == LayerType::regular)
    {

    }
}

void LayerStack::popLayer(ILayer *layer)
{
    
}


}
