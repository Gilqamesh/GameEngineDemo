#ifndef TEXTUREVERTEXATTRIBUTE_HPP
# define TEXTUREVERTEXATTRIBUTE_HPP

# include "Interfaces/IVertexAttribute.hpp"

namespace GilqEngine
{

class TextureVertexAttribute : public IVertexAttribute
{
Vector<float, 2> _position; // x, y
public:
    TextureVertexAttribute();
    TextureVertexAttribute(float x, float y);
    TextureVertexAttribute(const Vector<float, 2> &position);

    size_t size();
    
    static VertexLayout layout();
};

}

#endif
