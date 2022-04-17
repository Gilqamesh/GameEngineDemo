#include "Vertices/PositionNormalTextureVertex.hpp"

namespace NAMESPACE
{

PositionNormalTextureVertex::PositionNormalTextureVertex(const Vector<GLfloat, 3> &position, const Vector<GLfloat, 3> &normal, const Vector<GLfloat, 2> &texCoords)
    : _position(position), _normal(normal), _texCoords(texCoords)
{
    TRACE();
    push<GLfloat>(3);
    push<GLfloat>(3);
    push<GLfloat>(2);
}

}
