#ifndef ROTATIONALCOMPONENT2D_HPP
# define ROTATIONALCOMPONENT2D_HPP

# include "pch.hpp"
# include "Math/Vector.hpp"

namespace GilqEngine
{

struct RotationalComponent2D
{
    RotationalComponent2D() = default;
    RotationalComponent2D(float angle, float speed, const Vector<float, 2> &point);
    float               angle;
    float               speed;
    Vector<float, 2>    p;
};

ostream &operator<<(ostream &os, const RotationalComponent2D &a);

}

#endif
