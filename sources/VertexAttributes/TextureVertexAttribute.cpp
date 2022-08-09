#include "VertexAttributes/TextureVertexAttribute.hpp"

namespace GilqEngine
{

TextureVertexAttribute::TextureVertexAttribute()
{
    TRACE();
}

TextureVertexAttribute::TextureVertexAttribute(float x, float y)
    : _position{x, y}
{
    TRACE();
}

TextureVertexAttribute::TextureVertexAttribute(const Vector<float, 2> &position)
    : _position(position)
{
    TRACE();
}

VertexLayout TextureVertexAttribute::layout()
{
    TRACE();
    return (VertexLayout(2, GL_FLOAT, GL_FALSE, 2 * sizeof(float)));
}

size_t TextureVertexAttribute::size()
{
    TRACE();
    return (2 * sizeof(float));
}

}
