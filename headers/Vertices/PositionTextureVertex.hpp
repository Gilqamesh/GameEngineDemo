#ifndef POSITIONTEXTUREVERTEX_HPP
# define POSITIONTEXTUREVERTEX_HPP

# include "Interfaces/IVertex.hpp"
# include "Math/Vector.hpp"

namespace NAMESPACE
{

class PositionTextureVertex : public IVertex
{
Vector<GLfloat, 3> _position;
Vector<GLfloat, 2> _texCoords;
public:
    PositionTextureVertex(const Vector<GLfloat, 3> &position, const Vector<GLfloat, 2> &texCoords);

    inline void setPosition(const Vector<GLfloat, 3> &position) { _position = position; }
    inline void setTexCoords(const Vector<GLfloat, 2> &texCoords) { _texCoords = texCoords; }

    inline const Vector<GLfloat, 3> &getPosition() const { return (_position); }
    inline const Vector<GLfloat, 2> &getTexCoords() const { return (_texCoords); }
};

}

#endif
