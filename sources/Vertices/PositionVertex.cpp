#include "Vertices/PositionVertex.hpp"

namespace NAMESPACE
{

PositionVertex::PositionVertex(const Vector<GLfloat, 3> &position)
    : _position(position)
{
    push<GLfloat>(3);
}

}
