#ifndef POSITIONVERTEXATTRIBUTE_HPP
# define POSITIONVERTEXATTRIBUTE_HPP

# include "Interfaces/IVertexAttribute.hpp"
# include "Math/Vector.hpp"

namespace NAMESPACE
{
class PositionVertexAttribute : public IVertexAttribute
{
Vector<GLfloat, 3> _coordinates; // x, y, z
public:
    PositionVertexAttribute();
    PositionVertexAttribute(GLfloat x, GLfloat y, GLfloat z);
    void push(VertexLayout &layout);
    size_t getSize();
};

}

#endif
