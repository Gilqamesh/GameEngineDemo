#include "ECS/Components/RotationalComponent2D.hpp"

namespace GilqEngine
{

RotationalComponent2D::RotationalComponent2D(float angle, float speed, const Vector<float, 2> &point)
    : angle(angle), speed(speed), p(point)
{
    TRACE();

}

ostream &operator<<(ostream &os, const RotationalComponent2D &a)
{
    TRACE();
    os << "{" << a.angle << ", " << a.speed << ", " << a.p << "}";
    return (os);
}

}
