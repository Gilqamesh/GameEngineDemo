#include "Cameras/PerspectiveCamera.hpp"
#include "Events/EventDispatcher.hpp"
#include "Math/Utils.hpp"
#include "Math/Matrix.hpp"

namespace GilqEngine
{

PerspectiveCamera::PerspectiveCamera(
    MacWindow *window,
    const Vector<float, 3> &camPosition,
    const Vector<float, 3> &front,
    const Vector<float, 3> &worldUp,
    float positionalSpeed,
    float rotationalSpeed)
{
    TRACE();
    _camPosition = camPosition;
    _front = normalize(front);
    _worldUp = normalize(worldUp);
    _right = normalize(cross_product(_front, _worldUp));
    _up = normalize(cross_product(_right, _front));
    _rotationalSpeed = rotationalSpeed;
    _positionalSpeed = positionalSpeed;

    _pitch = radToDeg(std::asin(_front[1]));
    _yaw = radToDeg(std::acos(_front[0] / std::cos(degToRad(_pitch))));
    _zoom = 45.0f;
    _window = window;
    _input = GLFWInput::getInstance(window->getWindow());
    _viewMatrix = look_at(_camPosition, _camPosition + _front, _up);
}

const Matrix<float, 4, 4> &PerspectiveCamera::getViewMatrix() const
{
    TRACE();
    return (_viewMatrix);
}

const Vector<float, 3> &PerspectiveCamera::getPosition() const
{
    TRACE();
    return (_camPosition);
}

void PerspectiveCamera::onEvent(IEvent &e)
{
    TRACE();
    EventDispatcher dispatcher(e);
    dispatcher.dispatch<MouseMovedEvent>([this](IEvent &e) -> bool {
        return (this->onMouseMove(dynamic_cast<MouseMovedEvent &>(e)));
    });
    dispatcher.dispatch<MouseScrolledEvent>([this](IEvent &e) -> bool {
        return (this->onMouseScroll(dynamic_cast<MouseScrolledEvent &>(e)));
    });
}

void PerspectiveCamera::onUpdate(float deltaTime)
{
    TRACE();
    /* to account for delta time */
    float velocity = _positionalSpeed * deltaTime;
    if (_input->isKeyPressed(GLFW_KEY_W)) {
        _camPosition += _front * velocity;
    } else if (_input->isKeyPressed(GLFW_KEY_S)) {
        _camPosition -= _front * velocity;
    } else if (_input->isKeyPressed(GLFW_KEY_A)) {
        _camPosition -= _right * velocity;
    } else if (_input->isKeyPressed(GLFW_KEY_D)) {
        _camPosition += _right * velocity;
    } else if (_input->isKeyPressed(GLFW_KEY_SPACE)) {
        _camPosition += _up * velocity;
    } else if (_input->isKeyPressed(GLFW_KEY_LEFT_CONTROL)) {
        _camPosition -= _up * velocity;
    }
    _viewMatrix = look_at(_camPosition, _camPosition + _front, _up);
}

bool PerspectiveCamera::onMouseMove(MouseMovedEvent &e)
{
    (void)e;
    TRACE();

    _yaw   += (float)_window->getXMouseChange() * _rotationalSpeed;
    _pitch += (float)_window->getYMouseChange() * _rotationalSpeed;

    if (_pitch >  90.0f) _pitch = 90.0f;
    if (_pitch < -90.0f) _pitch = -90.0f;

    _front[0] = std::cos(degToRad(_yaw)) * std::cos(degToRad(_pitch));
    _front[1] = std::sin(degToRad(_pitch));
    _front[2] = std::sin(degToRad(_yaw)) * std::cos(degToRad(_pitch));
    _front = normalize(_front);
    _right = normalize(cross_product(_front, _worldUp));
    _up = normalize(cross_product(_right, _front));

    return (true);
}

bool PerspectiveCamera::onMouseScroll(MouseScrolledEvent &e)
{
    TRACE();
    _zoom -= e.getOffsetY();

    if (_zoom < 1.0f)  _zoom = 1.0f;
    if (_zoom > 45.0f) _zoom = 45.0f;

    return (true);
}

}
