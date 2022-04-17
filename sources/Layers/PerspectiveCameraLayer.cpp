#include "Layers/PerspectiveCameraLayer.hpp"
#include "Interfaces/Events/IEvent.hpp"

namespace NAMESPACE
{

PerspectiveCameraLayer::PerspectiveCameraLayer(MacApplication *macApplication)
    : ILayer(LayerType::overlay), _macApplication(macApplication)
{
    TRACE();
    _camera = new PerspectiveCamera(_macApplication->getWindow()->getWindow());
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
    _camera->onEvent(e);
}

void PerspectiveCameraLayer::onUpdate(float deltaTime)
{
    TRACE();
    _camera->onUpdate(deltaTime);
}

void PerspectiveCameraLayer::onRender()
{
    TRACE();
}

}
