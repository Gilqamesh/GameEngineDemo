#include "ECS/Components/PositionComponent2D.hpp"

namespace GilqEngine
{

PositionComponent2D::PositionComponent2D(float x, float y)
    : p(x, y)
{
    TRACE();

}

PositionComponent2D::PositionComponent2D(const Vector<float, 2> &position)
    : p(position)
{
    TRACE();

}

ostream &operator<<(ostream &os, const PositionComponent2D &a)
{
    TRACE();
    os << a.p;
    return (os);
}

}
