#include "ECS/Components/PositionComponent3D.hpp"

namespace GilqEngine
{

PositionComponent3D::PositionComponent3D(float x, float y, float z)
    : p(x, y, z)
{
    TRACE();

}

PositionComponent3D::PositionComponent3D(const Vector<float, 3> &position)
    : p(position)
{
    TRACE();

}

ostream &operator<<(ostream &os, const PositionComponent3D &a)
{
    TRACE();
    os << a.p;
    return (os);
}

}
