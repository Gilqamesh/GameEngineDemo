#ifndef POSITIONVERTEXATTRIBUTE3D_HPP
# define POSITIONVERTEXATTRIBUTE3D_HPP

# include "Interfaces/IVertexAttribute.hpp"

namespace GilqEngine
{
class PositionVertexAttribute3D : public IVertexAttribute
{
public:
Vector<float, 3> _coordinates; // x, y, z
    PositionVertexAttribute3D();
    PositionVertexAttribute3D(float x, float y, float z);
    PositionVertexAttribute3D(const Vector<float, 3> &position);

    size_t size();
    
    static VertexLayout layout();
};

}

#endif
