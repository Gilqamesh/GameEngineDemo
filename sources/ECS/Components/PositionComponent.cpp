#include "ECS/Components/PositionComponent.hpp"

namespace NAMESPACE
{

PositionComponent::PositionComponent(float x, float y, float z)
    : p(x, y, z)
{
    TRACE();

}

PositionComponent::PositionComponent(const Vector<float, 3> &position)
    : p(position)
{
    TRACE();

}

std::ostream &operator<<(std::ostream &os, const PositionComponent &a)
{
    TRACE();
    os << a.p;
    return (os);
}

}
