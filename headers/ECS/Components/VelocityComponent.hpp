#ifndef VELOCITYCOMPONENT_HPP
# define VELOCITYCOMPONENT_HPP

# include "pch.hpp"
# include "Math/Vector.hpp"

namespace NAMESPACE
{

struct VelocityComponent
{
    VelocityComponent() = default;
    VelocityComponent(float x, float y, float z);
    VelocityComponent(const Vector<float, 3> &velocity);
    Vector<float, 3> v;
};

std::ostream &operator<<(std::ostream &os, const VelocityComponent &a);

}

#endif
