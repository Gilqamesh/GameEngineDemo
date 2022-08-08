#ifndef TEXTUREVERTEXATTRIBUTE_HPP
# define TEXTUREVERTEXATTRIBUTE_HPP

# include "Interfaces/IVertexAttribute.hpp"

namespace GilqEngine
{

class TextureVertexAttribute : public IVertexAttribute
{
Vector<GLfloat, 2> _position; // x, y
public:
    TextureVertexAttribute();
    TextureVertexAttribute(GLfloat x, GLfloat y);
    TextureVertexAttribute(const Vector<GLfloat, 2> &position);
    static VertexLayout getLayout();
    size_t getSize();
};

}

#endif
