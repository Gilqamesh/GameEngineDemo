#include "VertexAttributes/PositionVertexAttribute3D.hpp"

namespace GilqEngine
{

PositionVertexAttribute3D::PositionVertexAttribute3D()
{
    TRACE();
}

PositionVertexAttribute3D::PositionVertexAttribute3D(float x, float y, float z)
    : _coordinates{x, y, z}
{
    TRACE();
}

PositionVertexAttribute3D::PositionVertexAttribute3D(const Vector<float, 3> &position)
    : _coordinates(position)
{
    TRACE();
}

VertexLayout PositionVertexAttribute3D::layout()
{
    TRACE();
    return (VertexLayout(3, GL_FLOAT, GL_FALSE, 3 * sizeof(float)));
}

size_t PositionVertexAttribute3D::size()
{
    TRACE();
    return (3 * sizeof(float));
}

}
