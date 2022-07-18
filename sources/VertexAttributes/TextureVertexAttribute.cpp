#include "VertexAttributes/TextureVertexAttribute.hpp"

namespace NAMESPACE
{

TextureVertexAttribute::TextureVertexAttribute()
{
    TRACE();
}

TextureVertexAttribute::TextureVertexAttribute(GLfloat x, GLfloat y)
    : _position{x, y}
{
    TRACE();
}

TextureVertexAttribute::TextureVertexAttribute(const Vector<GLfloat, 2> &position)
    : _position(position)
{
    TRACE();
}

VertexLayout TextureVertexAttribute::getLayout()
{
    TRACE();
    return (VertexLayout(2, GL_FLOAT, GL_FALSE, 2 * sizeof(GL_FLOAT)));
}

size_t TextureVertexAttribute::getSize()
{
    TRACE();
    ASSERT(_position.size());
    return (_position.size() * sizeof(_position[0]));
}

}
