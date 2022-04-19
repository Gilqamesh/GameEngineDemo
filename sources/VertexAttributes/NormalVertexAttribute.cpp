#include "VertexAttributes/NormalVertexAttribute.hpp"

namespace NAMESPACE
{

NormalVertexAttribute::NormalVertexAttribute()
{

}

NormalVertexAttribute::NormalVertexAttribute(GLfloat x, GLfloat y, GLfloat z)
    : _direction{x, y, z}
{

}

void NormalVertexAttribute::push(VertexLayout &layout)
{
    TRACE();
    layout.push<GLfloat>(3);
}

}
