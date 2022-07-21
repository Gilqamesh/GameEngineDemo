#include "ECS/Components/MomentumComponent.hpp"

namespace GilqEngine
{

MomentumComponent::MomentumComponent(float x, float y, float z)
    : p(x, y, z)
{
    TRACE();

}

MomentumComponent::MomentumComponent(const Vector<float, 3> &momentum)
    : p(momentum)
{
    TRACE();

}

std::ostream &operator<<(std::ostream &os, const MomentumComponent &a)
{
    TRACE();
    os << a.p;
    return (os);
}

}
