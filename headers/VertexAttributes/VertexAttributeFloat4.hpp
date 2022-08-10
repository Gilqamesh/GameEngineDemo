#ifndef VERTEXATTRIBUTEFLOAT4_HPP
# define VERTEXATTRIBUTEFLOAT4_HPP

# include "Interfaces/IVertexAttribute.hpp"

namespace GilqEngine
{
class VertexAttributeFloat4 : public IVertexAttribute
{
public:
Vector<float, 4> _value;
    VertexAttributeFloat4();
    VertexAttributeFloat4(float a, float b, float c, float d);
    VertexAttributeFloat4(const Vector<float, 4> &value);

    size_t size();
    
    static VertexLayout layout();
};

}

#endif
