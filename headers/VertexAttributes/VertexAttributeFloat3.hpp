#ifndef VERTEXATTRIBUTEFLOAT3_HPP
# define VERTEXATTRIBUTEFLOAT3_HPP

# include "Interfaces/IVertexAttribute.hpp"

namespace GilqEngine
{
class VertexAttributeFloat3 : public IVertexAttribute
{
public:
Vector<float, 3> _value;
    VertexAttributeFloat3();
    VertexAttributeFloat3(float a, float b, float c);
    VertexAttributeFloat3(const Vector<float, 3> &value);

    size_t size();
    
    static VertexLayout layout();
};

}

#endif
