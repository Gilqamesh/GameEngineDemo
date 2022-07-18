#include "VertexAttributes/PositionVertexAttribute.hpp"

namespace NAMESPACE
{

PositionVertexAttribute::PositionVertexAttribute()
{
    TRACE();
}

PositionVertexAttribute::PositionVertexAttribute(GLfloat x, GLfloat y, GLfloat z)
    : _coordinates{x, y, z}
{
    TRACE();
}

PositionVertexAttribute::PositionVertexAttribute(const Vector<GLfloat, 3> &position)
    : _coordinates(position)
{
    TRACE();
}

VertexLayout PositionVertexAttribute::getLayout()
{
    TRACE();
    return (VertexLayout(3, GL_FLOAT, GL_FALSE, 3 * sizeof(GL_FLOAT)));
}

size_t PositionVertexAttribute::getSize()
{
    TRACE();
    ASSERT(_coordinates.size());
    return (_coordinates.size() * sizeof(_coordinates[0]));
}

}
