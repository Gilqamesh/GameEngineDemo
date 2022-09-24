#ifndef ROTATIONALCOMPONENT3D_HPP
# define ROTATIONALCOMPONENT3D_HPP

# include "pch.hpp"
# include "Math/Vector.hpp"

namespace GilqEngine
{

struct RotationalComponent3D
{
    RotationalComponent3D() = default;
    RotationalComponent3D(float angle, float speed, const Vector<float, 3> &axis);
    float               angle;
    float               speed;
    Vector<float, 3>    axis;
};

ostream &operator<<(ostream &os, const RotationalComponent3D &a);

}

#endif
