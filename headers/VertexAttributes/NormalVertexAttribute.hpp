#ifndef NORMALVERTEXATTRIBUTE_HPP
# define NORMALVERTEXATTRIBUTE_HPP

# include "Interfaces/IVertexAttribute.hpp"
# include "Math/Vector.hpp"

namespace NAMESPACE
{
class NormalVertexAttribute : public IVertexAttribute
{
Vector<GLfloat, 3> _direction; // x, y, z
public:
    NormalVertexAttribute();
    NormalVertexAttribute(GLfloat x, GLfloat y, GLfloat z);
    virtual void push(VertexLayout &layout) override;
};

}

#endif
