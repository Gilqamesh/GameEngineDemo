#include "VertexAttributes/PositionVertexAttribute.hpp"

namespace NAMESPACE
{

PositionVertexAttribute::PositionVertexAttribute()
{
    
}

PositionVertexAttribute::PositionVertexAttribute(GLfloat x, GLfloat y, GLfloat z)
    : _coordinates{x, y, z}
{

}

VertexLayout PositionVertexAttribute::getLayout()
{
    TRACE();
    return (VertexLayout(3, GL_FLOAT, GL_FALSE, 3 * sizeof(GL_FLOAT)));
}

size_t PositionVertexAttribute::getSize()
{
    TRACE();
    ASSERT(_coordinates.size());
    return (_coordinates.size() * sizeof(_coordinates[0]));
}

}
