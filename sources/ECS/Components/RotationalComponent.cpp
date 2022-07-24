#include "ECS/Components/RotationalComponent.hpp"

namespace GilqEngine
{

RotationalComponent::RotationalComponent(float angle, float speed, const Vector<float, 3> &axis)
    : angle(angle), speed(speed), axis(axis)
{
    TRACE();

}

ostream &operator<<(ostream &os, const RotationalComponent &a)
{
    TRACE();
    os << "{" << a.angle << ", " << a.speed << "}";
    return (os);
}

}
