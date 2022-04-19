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

void NormalVertexAttribute::push(VertexLayout &layout)
{
    TRACE();
    layout.push<GLfloat>(3);
}

size_t NormalVertexAttribute::getSize()
{
    TRACE();
    ASSERT(_direction.size());
    return (_direction.size() * sizeof(_direction[0]));
}

}
