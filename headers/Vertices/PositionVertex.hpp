#ifndef POSITIONVERTEX_HPP
# define POSITIONVERTEX_HPP

# include "Interfaces/IVertex.hpp"
# include "Math/Vector.hpp"

namespace NAMESPACE
{

class PositionVertex : public IVertex
{
Vector<GLfloat, 3> _position;
public:
    PositionVertex(const Vector<GLfloat, 3> position);

    inline void setPosition(const Vector<GLfloat, 3> &position) { _position = position; }
    inline const Vector<GLfloat, 3> &getPosition() const { return (_position); }
};

}

#endif
