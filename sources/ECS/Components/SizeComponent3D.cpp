#include "ECS/Components/SizeComponent3D.hpp"

namespace GilqEngine
{

SizeComponent3D::SizeComponent3D(float width, float height, float depth)
    : size(width, height, depth)
{
    TRACE();

}

SizeComponent3D::SizeComponent3D(Vector<float, 3> size)
    : size(size)
{
    TRACE();

}

ostream &operator<<(ostream &os, const SizeComponent3D &a)
{
    TRACE();
    os << a.size;
    return (os);
}

}
