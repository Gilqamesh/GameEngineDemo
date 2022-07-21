#include "Layers/PerspectiveCameraLayer.hpp"
#include "Interfaces/Events/IEvent.hpp"

namespace GilqEngine
{

PerspectiveCameraLayer::PerspectiveCameraLayer(MacWindow *macWindow)
    : ILayer("Perspective Camera Layer", LayerType::overlay),
      _macWindow(macWindow)
{
    _camera = new PerspectiveCamera(_macWindow, Vector<float, 3>(-25.0f, 5.0f, 5.0f), Vector<float, 3>(1.0f, -0.2f, 0.0f));
    _camera->setMoveSpeed(50.0f);
    TRACE();
}

void PerspectiveCameraLayer::onAttach()
{
    TRACE();
    glfwSetInputMode(_macWindow->getWindow(), GLFW_CURSOR, GLFW_CURSOR_DISABLED);
}

void PerspectiveCameraLayer::onDetach()
{
    TRACE();
    delete _camera;
    glfwSetInputMode(_macWindow->getWindow(), GLFW_CURSOR, GLFW_CURSOR_NORMAL);
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
