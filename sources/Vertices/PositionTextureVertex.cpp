#include "Vertices/PositionTextureVertex.hpp"

namespace NAMESPACE
{

PositionTextureVertex::PositionTextureVertex(const Vector<GLfloat, 3> &position, const Vector<GLfloat, 2> &texCoords)
    : _position(position), _texCoords(texCoords)
{
    push<GLfloat>(3);
    push<GLfloat>(2);
}

}
