#include "ECS/Components/VelocityComponent3D.hpp"

namespace GilqEngine
{

VelocityComponent3D::VelocityComponent3D(float x, float y, float z)
    : v(x, y, z)
{
    TRACE();

}

VelocityComponent3D::VelocityComponent3D(const Vector<float, 3> &velocity)
    : v(velocity)
{
    TRACE();

}

ostream &operator<<(ostream &os, const VelocityComponent3D &a)
{
    TRACE();
    os << a.v;
    return (os);
}

}
