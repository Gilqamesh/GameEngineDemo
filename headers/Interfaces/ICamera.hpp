#ifndef ICAMERA_HPP
# define ICAMERA_HPP

# include "pch.hpp"
# include "Math/Vector.hpp"
# include "Math/Matrix.hpp"

namespace GilqEngine
{

class IEvent;

class ICamera
{
public:
    virtual ~ICamera() = default;
    virtual const Matrix<float, 4, 4> &getViewMatrix() const = 0;
    virtual const Vector<float, 3> &getPosition() const = 0;
    virtual void onEvent(IEvent &e) = 0;
    virtual void onUpdate(float deltaTime) = 0;
};

}

#endif
