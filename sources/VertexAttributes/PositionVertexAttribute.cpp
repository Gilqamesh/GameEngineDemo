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

size_t PositionVertexAttribute::getSize()
{
    TRACE();
    ASSERT(_coordinates.size());
    return (_coordinates.size() * sizeof(_coordinates[0]));
}

}
