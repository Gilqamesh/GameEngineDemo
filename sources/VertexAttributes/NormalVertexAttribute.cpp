#include "VertexAttributes/NormalVertexAttribute.hpp"

namespace NAMESPACE
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

VertexLayout NormalVertexAttribute::getLayout()
{
    TRACE();
    return (VertexLayout(3, GL_FLOAT, GL_FALSE, 3 * sizeof(GL_FLOAT)));
}

size_t NormalVertexAttribute::getSize()
{
    TRACE();
    ASSERT(_direction.size());
    return (_direction.size() * sizeof(_direction[0]));
}

}
