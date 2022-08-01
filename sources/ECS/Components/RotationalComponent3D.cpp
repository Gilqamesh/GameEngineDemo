#include "ECS/Components/RotationalComponent3D.hpp"

namespace GilqEngine
{

RotationalComponent3D::RotationalComponent3D(float angle, float speed, const Vector<float, 3> &axis)
    : angle(angle), speed(speed), axis(axis)
{
    TRACE();

}

ostream &operator<<(ostream &os, const RotationalComponent3D &a)
{
    TRACE();
    os << "{" << a.angle << ", " << a.speed << ", " << a.axis << "}";
    return (os);
}

}
