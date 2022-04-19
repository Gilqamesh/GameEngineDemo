#include "VertexAttributes/TextureVertexAttribute.hpp"

namespace NAMESPACE
{

TextureVertexAttribute::TextureVertexAttribute()
{
    
}

TextureVertexAttribute::TextureVertexAttribute(GLfloat x, GLfloat y)
    : _position{x, y}
{

}

void TextureVertexAttribute::push(VertexLayout &layout)
{
    TRACE();
    layout.push<GLfloat>(2);
}

size_t TextureVertexAttribute::getSize()
{
    TRACE();
    ASSERT(_position.size());
    return (_position.size() * sizeof(_position[0]));
}

}
