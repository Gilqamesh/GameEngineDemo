#ifndef VELOCITYCOMPONENT3D_HPP
# define VELOCITYCOMPONENT3D_HPP

# include "pch.hpp"
# include "Math/Vector.hpp"

namespace GilqEngine
{

struct VelocityComponent3D
{
    VelocityComponent3D() = default;
    VelocityComponent3D(float x, float y, float z);
    VelocityComponent3D(const Vector<float, 3> &velocity);
    Vector<float, 3> v;
};

ostream &operator<<(ostream &os, const VelocityComponent3D &a);

}

#endif
