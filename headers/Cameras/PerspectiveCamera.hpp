#ifndef PERSPECTIVECAMERA_HPP
# define PERSPECTIVECAMERA_HPP

# include "Interfaces/ICamera.hpp"
# include "Math/Vector.hpp"
# include "Events/MouseEvents/MouseMovedEvent.hpp"
# include "Events/MouseEvents/MouseScrolledEvent.hpp"
# include "Events/KeyEvents/KeyPressedEvent.hpp"
# include "Inputs/GLFWInput.hpp"
# include "Windows/MacWindow.hpp"

namespace GilqEngine
{

class PerspectiveCamera : public ICamera
{
Vector<float, 3>    _camPosition;
Vector<float, 3>    _front;
Vector<float, 3>    _right;
Vector<float, 3>    _up;
Vector<float, 3>    _worldUp;
float               _rotationalSpeed;
float               _positionalSpeed;
/*
 * _yaw, _pitch and _roll are in Degrees
 */
float               _yaw;
float               _pitch;
// float _roll;
float               _zoom;
MacWindow           *_window;
GLFWInput           *_input;
Matrix<float, 4, 4> _viewMatrix;
public:
    PerspectiveCamera(
        MacWindow *window,
        const Vector<float, 3> &camPosition = Vector<float, 3>(0.0f, 0.0f, 0.0f),
        const Vector<float, 3> &front       = Vector<float, 3>(0.0f, 0.0f, 1.0f),
        const Vector<float, 3> &worldUp     = Vector<float, 3>(0.0f, 1.0f, 0.0f),
        float positionalSpeed               = 5.0f,
        float rotationalSpeed               = 0.25f
    );
    virtual const Matrix<float, 4, 4> &getViewMatrix() const override;
    virtual const Vector<float, 3> &getPosition() const override;
    virtual void onEvent(IEvent &e) override;
    virtual void onUpdate(float deltaTime) override;

    inline void setMoveSpeed(float moveSpeed) { _positionalSpeed = moveSpeed; }
private:
    bool onMouseMove(MouseMovedEvent &e);
    bool onMouseScroll(MouseScrolledEvent &e);
};

}

#endif
