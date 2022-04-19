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

}
