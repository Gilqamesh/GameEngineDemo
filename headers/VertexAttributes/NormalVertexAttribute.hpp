#ifndef NORMALVERTEXATTRIBUTE_HPP
# define NORMALVERTEXATTRIBUTE_HPP

# include "Interfaces/IVertexAttribute.hpp"
# include "Math/Vector.hpp"

namespace GilqEngine
{
class NormalVertexAttribute : public IVertexAttribute
{
Vector<GLfloat, 3> _direction; // x, y, z
public:
    NormalVertexAttribute();
    NormalVertexAttribute(GLfloat x, GLfloat y, GLfloat z);
    NormalVertexAttribute(const Vector<GLfloat, 3> &direction);
    static VertexLayout getLayout();
    size_t getSize();
};

}

#endif
