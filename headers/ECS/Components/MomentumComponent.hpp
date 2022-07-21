#ifndef MOMENTUMCOMPONENT_HPP
# define MOMENTUMCOMPONENT_HPP

# include "pch.hpp"
# include "Math/Vector.hpp"

namespace GilqEngine
{

class MomentumComponent
{
public:
    MomentumComponent() = default;
    MomentumComponent(float x, float y, float z);
    MomentumComponent(const Vector<float, 3> &momentum);
    Vector<float, 3> p;
};

std::ostream &operator<<(std::ostream &os, const MomentumComponent &a);

}

#endif
