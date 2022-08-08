#include "VertexAttributes/NormalVertexAttribute.hpp"

namespace GilqEngine
{

NormalVertexAttribute::NormalVertexAttribute()
{
    TRACE();
}

NormalVertexAttribute::NormalVertexAttribute(GLfloat x, GLfloat y, GLfloat z)
    : _direction{x, y, z}
{
    TRACE();
}

NormalVertexAttribute::NormalVertexAttribute(const Vector<GLfloat, 3> &direction)
    : _direction(direction)
{
    TRACE();
}

VertexLayout NormalVertexAttribute::getLayout()
{
    TRACE();
    return (VertexLayout(3, GL_FLOAT, GL_FALSE, 3 * sizeof(float)));
}

size_t NormalVertexAttribute::getSize()
{
    TRACE();
    return (3 * sizeof(float));
}

}
