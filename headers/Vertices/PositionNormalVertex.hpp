#ifndef POSITIONNORMALVERTEX_HPP
# define POSITIONNORMALVERTEX_HPP

# include "Interfaces/IVertex.hpp"
# include "Math/Vector.hpp"

namespace NAMESPACE
{

class PositionNormalVertex : IVertex
{
Vector<GLfloat, 3> _position;
Vector<GLfloat, 3> _normal;
public:
    PositionNormalVertex(const Vector<GLfloat, 3> &position, const Vector<GLfloat, 3> &normal);

    inline void setPosition(const Vector<GLfloat, 3> &position) { _position = position; }
    inline void setNormal(const Vector<GLfloat, 3> &normal) { _normal = normal; }

    inline const Vector<GLfloat, 3> &getPosition() const { return (_position); }
    inline const Vector<GLfloat, 3> &getNormal() const { return (_normal); }
};

}

#endif
