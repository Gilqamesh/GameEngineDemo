#include "Vertices/PositionVertex.hpp"
#include "Debug/Trace.hpp"

namespace NAMESPACE
{

PositionVertex::PositionVertex(const Vector<GLfloat, 3> &position)
    : _position(position)
{
    TRACE();
    push<GLfloat>(3);
}

}
