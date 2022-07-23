#include "VertexAttributes/PositionVertexAttribute2D.hpp"

namespace GilqEngine
{

PositionVertexAttribute2D::PositionVertexAttribute2D()
{
    TRACE();
}

PositionVertexAttribute2D::PositionVertexAttribute2D(GLfloat x, GLfloat y)
    : _coordinates{x, y}
{
    TRACE();
}

PositionVertexAttribute2D::PositionVertexAttribute2D(const Vector<GLfloat, 2> &position)
    : _coordinates(position)
{
    TRACE();
}

VertexLayout PositionVertexAttribute2D::getLayout()
{
    TRACE();
    return (VertexLayout(3, GL_FLOAT, GL_FALSE, 2 * sizeof(GL_FLOAT)));
}

size_t PositionVertexAttribute2D::getSize()
{
    TRACE();
    ASSERT(_coordinates.size());
    return (_coordinates.size() * sizeof(_coordinates[0]));
}

}
