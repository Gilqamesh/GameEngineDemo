#include "ECS/Components/VelocityComponent.hpp"

namespace NAMESPACE
{

VelocityComponent::VelocityComponent(float x, float y, float z)
    : v(x, y, z)
{
    TRACE();

}

VelocityComponent::VelocityComponent(const Vector<float, 3> &velocity)
    : v(velocity)
{
    TRACE();

}

std::ostream &operator<<(std::ostream &os, const VelocityComponent &a)
{
    TRACE();
    os << a.v;
    return (os);
}

}
