#include "VertexAttributes/PositionVertexAttribute2D.hpp"

namespace GilqEngine
{

PositionVertexAttribute2D::PositionVertexAttribute2D()
{
    TRACE();
}

PositionVertexAttribute2D::PositionVertexAttribute2D(float x, float y)
    : _coordinates{x, y}
{
    TRACE();
}

PositionVertexAttribute2D::PositionVertexAttribute2D(const Vector<float, 2> &position)
    : _coordinates(position)
{
    TRACE();
}

VertexLayout PositionVertexAttribute2D::layout()
{
    TRACE();
    return (VertexLayout(2, GL_FLOAT, GL_FALSE, 2 * sizeof(float)));
}

size_t PositionVertexAttribute2D::size()
{
    TRACE();
    return (2 * sizeof(float));
}

}
