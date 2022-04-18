#include "Layers/PerspectiveCameraLayer.hpp"
#include "Interfaces/Events/IEvent.hpp"

namespace NAMESPACE
{

PerspectiveCameraLayer::PerspectiveCameraLayer(MacApplication *macApplication)
    : ILayer(LayerType::overlay), _macApplication(macApplication)
{
    _camera = new PerspectiveCamera(_macApplication->getWindow()->getWindow());
    TRACE();
}

void PerspectiveCameraLayer::onAttach()
{
    TRACE();
    glfwSetInputMode(_macApplication->getWindow()->getWindow(), GLFW_CURSOR, GLFW_CURSOR_DISABLED);
}

void PerspectiveCameraLayer::onDetach()
{
    TRACE();
    delete _camera;
    glfwSetInputMode(_macApplication->getWindow()->getWindow(), GLFW_CURSOR, GLFW_CURSOR_NORMAL);
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
