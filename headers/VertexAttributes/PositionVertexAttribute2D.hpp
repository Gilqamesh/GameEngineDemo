#ifndef POSITIONVERTEXATTRIBUTE2D_HPP
# define POSITIONVERTEXATTRIBUTE2D_HPP

# include "Interfaces/IVertexAttribute.hpp"

namespace GilqEngine
{
class PositionVertexAttribute2D : public IVertexAttribute
{
public:
Vector<float, 2> _coordinates; // x, y
    PositionVertexAttribute2D();
    PositionVertexAttribute2D(float x, float y);
    PositionVertexAttribute2D(const Vector<float, 2> &position);

    size_t size();

    static VertexLayout layout();
};

}

#endif
