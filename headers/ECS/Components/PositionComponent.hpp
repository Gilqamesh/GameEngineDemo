#ifndef POSITIONCOMPONENT_HPP
# define POSITIONCOMPONENT_HPP

# include "pch.hpp"

struct PositionComponent
{
    float x;
    float y;
    float z;
};

std::ostream &operator<<(std::ostream &os, const PositionComponent &a);

#endif
