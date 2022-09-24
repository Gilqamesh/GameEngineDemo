#ifndef POSITIONCOMPONENT2D_HPP
# define POSITIONCOMPONENT2D_HPP

# include "pch.hpp"
# include "Math/Vector.hpp"

namespace GilqEngine
{

struct PositionComponent2D
{
    PositionComponent2D() = default;
    PositionComponent2D(float x, float y);
    PositionComponent2D(const Vector<float, 2> &position);
    Vector<float, 2> p;
};

ostream &operator<<(ostream &os, const PositionComponent2D &a);

}

#endif
