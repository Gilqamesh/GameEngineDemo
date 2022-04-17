#include "Vertices/PositionTextureVertex.hpp"
#include "Debug/Trace.hpp"

namespace NAMESPACE
{

PositionTextureVertex::PositionTextureVertex(const Vector<GLfloat, 3> &position, const Vector<GLfloat, 2> &texCoords)
    : _position(position), _texCoords(texCoords)
{
    TRACE();
    push<GLfloat>(3);
    push<GLfloat>(2);
}

}
