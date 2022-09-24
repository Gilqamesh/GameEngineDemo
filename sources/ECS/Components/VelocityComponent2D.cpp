#include "ECS/Components/VelocityComponent2D.hpp"

namespace GilqEngine
{

VelocityComponent2D::VelocityComponent2D(float x, float y)
    : v(x, y)
{
    TRACE();

}

VelocityComponent2D::VelocityComponent2D(const Vector<float, 2> &velocity)
    : v(velocity)
{
    TRACE();

}

ostream &operator<<(ostream &os, const VelocityComponent2D &a)
{
    TRACE();
    os << a.v;
    return (os);
}

}
