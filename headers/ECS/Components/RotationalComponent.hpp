#ifndef ROTATIONALCOMPONENT_HPP
# define ROTATIONALCOMPONENT_HPP

# include "pch.hpp"
# include "Math/Vector.hpp"

namespace GilqEngine
{

struct RotationalComponent
{
    RotationalComponent() = default;
    RotationalComponent(float angle, float speed, const Vector<float, 3> &axis);
    float               angle;
    float               speed;
    Vector<float, 3>    axis;
};

ostream &operator<<(ostream &os, const RotationalComponent &a);

}

#endif
