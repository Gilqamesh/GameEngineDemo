#include "Vertices/PositionNormalVertex.hpp"

namespace NAMESPACE
{

PositionNormalVertex::PositionNormalVertex(const Vector<GLfloat, 3> &position, const Vector<GLfloat, 3> &normal)
    : _position(position), _normal(normal)
{

}

}
