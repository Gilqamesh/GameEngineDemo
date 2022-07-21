#ifndef POSITIONVERTEXATTRIBUTE_HPP
# define POSITIONVERTEXATTRIBUTE_HPP

# include "Interfaces/IVertexAttribute.hpp"
# include "Math/Vector.hpp"

namespace GilqEngine
{
class PositionVertexAttribute : public IVertexAttribute
{
public:
Vector<GLfloat, 3> _coordinates; // x, y, z
    PositionVertexAttribute();
    PositionVertexAttribute(GLfloat x, GLfloat y, GLfloat z);
    PositionVertexAttribute(const Vector<GLfloat, 3> &position);
    static VertexLayout getLayout();
    size_t getSize();
};

}

#endif
