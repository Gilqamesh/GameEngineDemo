#ifndef TEXTUREVERTEXATTRIBUTE_HPP
# define TEXTUREVERTEXATTRIBUTE_HPP

# include "Interfaces/IVertexAttribute.hpp"
# include "Math/Vector.hpp"

namespace NAMESPACE
{

class TextureVertexAttribute : public IVertexAttribute
{
Vector<GLfloat, 2> _position; // x, y
public:
    TextureVertexAttribute();
    TextureVertexAttribute(GLfloat x, GLfloat y);
    static VertexLayout getLayout();
    size_t getSize();
};

}

#endif
