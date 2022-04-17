#include "Vertices/PositionNormalVertex.hpp"
#include "Debug/Trace.hpp"

namespace NAMESPACE
{

PositionNormalVertex::PositionNormalVertex(const Vector<GLfloat, 3> &position, const Vector<GLfloat, 3> &normal)
    : _position(position), _normal(normal)
{
    TRACE();
    push<GLfloat>(3);
    push<GLfloat>(3);
}

}
