#include "Layers/Test/FirstLayer.hpp"
#include "Interfaces/Events/IEvent.hpp"

namespace NAMESPACE
{

FirstLayer::FirstLayer(MacApplication *macApplication)
    : ILayer(LayerType::regular), application(macApplication)
{
    TRACE();
    camera = new PerspectiveCamera(application->getWindow()->getWindow());
}

void FirstLayer::onAttach()
{
    TRACE();
}

void FirstLayer::onDetach()
{
    TRACE();
}

void FirstLayer::onEvent(IEvent &e)
{
    TRACE();
    camera->onEvent(e);
}

void FirstLayer::onUpdate(float deltaTime)
{
    TRACE();
    camera->onUpdate(deltaTime);
}

void FirstLayer::onRender()
{
    TRACE();
}

}
