#ifndef POSITIONVERTEXATTRIBUTE2D_HPP
# define POSITIONVERTEXATTRIBUTE2D_HPP

# include "Interfaces/IVertexAttribute.hpp"

namespace GilqEngine
{
class PositionVertexAttribute2D : public IVertexAttribute
{
public:
Vector<GLfloat, 2> _coordinates; // x, y
    PositionVertexAttribute2D();
    PositionVertexAttribute2D(GLfloat x, GLfloat y);
    PositionVertexAttribute2D(const Vector<GLfloat, 2> &position);
    static VertexLayout getLayout();
    size_t getSize();
};

}

#endif
