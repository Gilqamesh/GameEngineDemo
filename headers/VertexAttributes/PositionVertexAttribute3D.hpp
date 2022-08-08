#ifndef POSITIONVERTEXATTRIBUTE3D_HPP
# define POSITIONVERTEXATTRIBUTE3D_HPP

# include "Interfaces/IVertexAttribute.hpp"

namespace GilqEngine
{
class PositionVertexAttribute3D : public IVertexAttribute
{
public:
Vector<GLfloat, 3> _coordinates; // x, y, z
    PositionVertexAttribute3D();
    PositionVertexAttribute3D(GLfloat x, GLfloat y, GLfloat z);
    PositionVertexAttribute3D(const Vector<GLfloat, 3> &position);
    static VertexLayout getLayout();
    size_t getSize();
};

}

#endif
