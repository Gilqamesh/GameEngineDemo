#include "Applications/MacApplication.hpp"
#include "Interfaces/Events/IEvent.hpp"
#include "Interfaces/ILayer.hpp"

namespace NAMESPACE
{

MacApplication::MacApplication()
{
    TRACE();
    window = new MacWindow();
    window->setEventCallback([this](IEvent &e){ this->onEvent(e); });
    layerManager = new LayerStack();
}

MacApplication::~MacApplication()
{
    TRACE();
    delete window;
    delete layerManager;
}

void MacApplication::run()
{
    TRACE();
}

void MacApplication::onEvent(IEvent &e)
{
    TRACE();
    for (LayerStack::reverse_iterator rit = layerManager->rbegin(); rit != layerManager->rend(); ++rit)
    {
        if (e.isHandled())
            break ;
        (*rit)->onEvent(e);
    }
}

void MacApplication::pushLayer(ILayer *layer)
{
    TRACE();
    layerManager->pushLayer(layer);
    layer->onAttach();
}

void MacApplication::popLayer(ILayer *layer)
{
    TRACE();
    layerManager->popLayer(layer);
    layer->onDetach();
}


}
