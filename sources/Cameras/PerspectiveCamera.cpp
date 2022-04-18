#include "Cameras/PerspectiveCamera.hpp"
#include "Events/EventDispatcher.hpp"
#include "Math/Utils.hpp"
#include "Math/Matrix.hpp"

namespace NAMESPACE
{

PerspectiveCamera::PerspectiveCamera(
    GLFWwindow *window,
    const Vector<float, 3> &camPosition,
    const Vector<float, 3> &front,
    const Vector<float, 3> &worldUp,
    float positionalSpeed,
    float rotationalSpeed)
{
    TRACE();
    this->camPosition = camPosition;
    this->front = front;
    this->right = normalize(cross_product(front, worldUp));
    this->up = normalize(cross_product(right, front));
    this->worldUp = worldUp;
    this->rotationalSpeed = rotationalSpeed;
    this->positionalSpeed = positionalSpeed;
    this->yaw = 0;
    this->pitch = 0;
    this->input = GLFWInput::getInstance(window);
    zoom = 45.0f;
}

const Matrix<float, 4, 4> &PerspectiveCamera::getProjection() const
{
    TRACE();
    return (currentProjection);
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
    float velocity = positionalSpeed * deltaTime;
    if (input->isKeyPressed(GLFW_KEY_W)) {
        camPosition += front * velocity;
    } else if (input->isKeyPressed(GLFW_KEY_S)) {
        camPosition -= front * velocity;
    } else if (input->isKeyPressed(GLFW_KEY_A)) {
        camPosition -= right * velocity;
    } else if (input->isKeyPressed(GLFW_KEY_D)) {
        camPosition += right * velocity;
    } else if (input->isKeyPressed(GLFW_KEY_SPACE)) {
        camPosition += up * velocity;
    } else if (input->isKeyPressed(GLFW_KEY_LEFT_CONTROL)) {
        camPosition -= up * velocity;
    }
    currentProjection = look_at(camPosition, camPosition + front, up);
    LOG("Current position in the world: " << camPosition[0] << " " << camPosition[1] << " " << camPosition[2]);
}

bool PerspectiveCamera::onMouseMove(MouseMovedEvent &e)
{
    TRACE();
    yaw   += e.getX() * rotationalSpeed;
    pitch += e.getY() * rotationalSpeed;

    if (pitch >  89.0f) pitch = 89.0f;
    if (pitch < -89.0f) pitch = -89.0f;

    front[0] = std::cos(degToRad(yaw)) * std::cos(degToRad(pitch));
    front[1] = std::sin(degToRad(pitch));
    front[2] = std::sin(degToRad(yaw)) * std::cos(degToRad(pitch));
    front = normalize(front);
    right = normalize(cross_product(front, worldUp));
    up = normalize(cross_product(right, front));

    return (true);
}

bool PerspectiveCamera::onMouseScroll(MouseScrolledEvent &e)
{
    TRACE();
    zoom -= e.getOffsetY();

    if (zoom < 1.0f)  zoom = 1.0f;
    if (zoom > 45.0f) zoom = 45.0f;

    return (true);
}

}
