#ifndef POSITIONNORMALTEXTUREVERTEX_HPP
# define POSITIONNORMALTEXTUREVERTEX_HPP

# include "Interfaces/IVertex.hpp"
# include "Math/Vector.hpp"

namespace NAMESPACE
{

class PositionNormalTextureVertex : public IVertex
{
Vector<GLfloat, 3> _position;
Vector<GLfloat, 3> _normal;
Vector<GLfloat, 2> _texCoords;
public:
    PositionNormalTextureVertex(const Vector<GLfloat, 3> &position, const Vector<GLfloat, 3> &normal, const Vector<GLfloat, 2> &texCoords);

    inline void setPosition(const Vector<GLfloat, 3> &position) { _position = position; }
    inline void setNormal(const Vector<GLfloat, 3> &normal) { _normal = normal; }
    inline void setTexCoords(const Vector<GLfloat, 2> &texCoords) { _texCoords = texCoords; }

    inline const Vector<GLfloat, 3> &getPosition() const { return (_position); }
    inline const Vector<GLfloat, 3> &getNormal() const { return (_normal); }
    inline const Vector<GLfloat, 2> &getTexCoords() const { return (_texCoords); }
};

}

#endif
