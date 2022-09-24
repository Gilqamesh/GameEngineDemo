#ifndef VERTEXATTRIBUTEFLOAT2_HPP
# define VERTEXATTRIBUTEFLOAT2_HPP

# include "Interfaces/IVertexAttribute.hpp"

namespace GilqEngine
{
class VertexAttributeFloat2 : public IVertexAttribute
{
Vector<float, 2> _value;
public:
    VertexAttributeFloat2();
    VertexAttributeFloat2(float a, float b);
    VertexAttributeFloat2(const Vector<float, 2> &value);

    size_t size();
    
    static VertexLayout layout();
};

}

#endif
