#ifndef NORMALVERTEXATTRIBUTE_HPP
# define NORMALVERTEXATTRIBUTE_HPP

# include "Interfaces/IVertexAttribute.hpp"

namespace GilqEngine
{
class NormalVertexAttribute : public IVertexAttribute
{
Vector<float, 3> _direction; // x, y, z
public:
    NormalVertexAttribute();
    NormalVertexAttribute(float x, float y, float z);
    NormalVertexAttribute(const Vector<float, 3> &direction);

    size_t size();
    
    static VertexLayout layout();
};

}

#endif
