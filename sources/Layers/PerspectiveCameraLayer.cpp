#include "Layers/PerspectiveCameraLayer.hpp"
#include "Interfaces/Events/IEvent.hpp"

namespace NAMESPACE
{

PerspectiveCameraLayer::PerspectiveCameraLayer(MacApplication *macApplication)
    : ILayer(LayerType::regular), application(macApplication)
{
    TRACE();
    camera = new PerspectiveCamera(application->getWindow()->getWindow());
}

void PerspectiveCameraLayer::onAttach()
{
    TRACE();
}

void PerspectiveCameraLayer::onDetach()
{
    TRACE();
}

void PerspectiveCameraLayer::onEvent(IEvent &e)
{
    TRACE();
    camera->onEvent(e);
}

void PerspectiveCameraLayer::onUpdate(float deltaTime)
{
    TRACE();
    camera->onUpdate(deltaTime);
}

void PerspectiveCameraLayer::onRender()
{
    TRACE();
}

}
