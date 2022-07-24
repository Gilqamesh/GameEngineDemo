#ifndef POSITIONCOMPONENT3D_HPP
# define POSITIONCOMPONENT3D_HPP

# include "pch.hpp"
# include "Math/Vector.hpp"

namespace GilqEngine
{

struct PositionComponent3D
{
    PositionComponent3D() = default;
    PositionComponent3D(float x, float y, float z);
    PositionComponent3D(const Vector<float, 3> &position);
    Vector<float, 3> p;
};

ostream &operator<<(ostream &os, const PositionComponent3D &a);

}

#endif
