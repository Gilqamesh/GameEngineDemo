#include "VertexAttributes/PositionVertexAttribute.hpp"

namespace NAMESPACE
{

PositionVertexAttribute::PositionVertexAttribute()
{
    
}

PositionVertexAttribute::PositionVertexAttribute(GLfloat x, GLfloat y, GLfloat z)
    : _coordinates{x, z, y}
{

}

void PositionVertexAttribute::push(VertexLayout &layout)
{
    TRACE();
    layout.push<GLfloat>(3);
}

}
