#include "ECS/Components/SizeComponent2D.hpp"

namespace GilqEngine
{

SizeComponent2D::SizeComponent2D(float width, float height)
    : size(width, height)
{
    TRACE();

}

SizeComponent2D::SizeComponent2D(Vector<float, 2> size)
    : size(size)
{
    TRACE();

}

ostream &operator<<(ostream &os, const SizeComponent2D &a)
{
    TRACE();
    os << a.size;
    return (os);
}

}
