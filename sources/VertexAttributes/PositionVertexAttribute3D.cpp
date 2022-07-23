#include "VertexAttributes/PositionVertexAttribute3D.hpp"

namespace GilqEngine
{

PositionVertexAttribute3D::PositionVertexAttribute3D()
{
    TRACE();
}

PositionVertexAttribute3D::PositionVertexAttribute3D(GLfloat x, GLfloat y, GLfloat z)
    : _coordinates{x, y, z}
{
    TRACE();
}

PositionVertexAttribute3D::PositionVertexAttribute3D(const Vector<GLfloat, 3> &position)
    : _coordinates(position)
{
    TRACE();
}

VertexLayout PositionVertexAttribute3D::getLayout()
{
    TRACE();
    return (VertexLayout(3, GL_FLOAT, GL_FALSE, 3 * sizeof(GL_FLOAT)));
}

size_t PositionVertexAttribute3D::getSize()
{
    TRACE();
    ASSERT(_coordinates.size());
    return (_coordinates.size() * sizeof(_coordinates[0]));
}

}
