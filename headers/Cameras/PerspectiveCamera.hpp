#ifndef PERSPECTIVECAMERA_HPP
# define PERSPECTIVECAMERA_HPP

# include "Interfaces/ICamera.hpp"
# include "Math/Vector.hpp"
# include "Events/MouseEvents/MouseMovedEvent.hpp"
# include "Events/MouseEvents/MouseScrolledEvent.hpp"
# include "Events/KeyEvents/KeyPressedEvent.hpp"
# include "Inputs/GLFWInput.hpp"

namespace NAMESPACE
{

class PerspectiveCamera : public ICamera
{
Vector<float, 3> camPosition;
Vector<float, 3> front;
Vector<float, 3> right;
Vector<float, 3> up;
Vector<float, 3> worldUp;
float rotationalSpeed;
float positionalSpeed;
float yaw;
float pitch;
float zoom;
// float roll;
GLFWInput *input;
Matrix<float, 4, 4> currentProjection;
public:
    PerspectiveCamera(
        GLFWwindow *window,
        const Vector<float, 3> &camPosition = Vector<float, 3>(0.0f, 0.0f, 0.0f),
        const Vector<float, 3> &front       = Vector<float, 3>(0.0f, 0.0f, 1.0f),
        const Vector<float, 3> &worldUp     = Vector<float, 3>(0.0f, 1.0f, 0.0f),
        float positionalSpeed               = 5.0f,
        float rotationalSpeed               = 0.25f);
    virtual const Matrix<float, 4, 4> &getProjection() const override;
    virtual void onEvent(IEvent &e) override;
    virtual void onUpdate(float deltaTime) override;
private:
    bool onMouseMove(MouseMovedEvent &e);
    bool onMouseScroll(MouseScrolledEvent &e);
};

}

#endif
