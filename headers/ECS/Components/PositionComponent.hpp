#ifndef POSITIONCOMPONENT_HPP
# define POSITIONCOMPONENT_HPP

# include "pch.hpp"
# include "Math/Vector.hpp"

namespace NAMESPACE
{

struct PositionComponent
{
    PositionComponent() = default;
    PositionComponent(float x, float y, float z);
    PositionComponent(const Vector<float, 3> &position);
    Vector<float, 3> p;
};

std::ostream &operator<<(std::ostream &os, const PositionComponent &a);

}

#endif
