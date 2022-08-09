#include "VertexAttributes/NormalVertexAttribute.hpp"

namespace GilqEngine
{

NormalVertexAttribute::NormalVertexAttribute()
{
    TRACE();
}

NormalVertexAttribute::NormalVertexAttribute(float x, float y, float z)
    : _direction{x, y, z}
{
    TRACE();
}

NormalVertexAttribute::NormalVertexAttribute(const Vector<float, 3> &direction)
    : _direction(direction)
{
    TRACE();
}

VertexLayout NormalVertexAttribute::layout()
{
    TRACE();
    return (VertexLayout(3, GL_FLOAT, GL_FALSE, 3 * sizeof(float)));
}

size_t NormalVertexAttribute::size()
{
    TRACE();
    return (3 * sizeof(float));
}

}
