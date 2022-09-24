#ifndef VELOCITYCOMPONENT2D_HPP
# define VELOCITYCOMPONENT2D_HPP

# include "pch.hpp"
# include "Math/Vector.hpp"

namespace GilqEngine
{

struct VelocityComponent2D
{
    VelocityComponent2D() = default;
    VelocityComponent2D(float x, float y);
    VelocityComponent2D(const Vector<float, 2> &velocity);
    Vector<float, 2> v;
};

ostream &operator<<(ostream &os, const VelocityComponent2D &a);

}

#endif
