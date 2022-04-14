#ifndef VELOCITYCOMPONENT_HPP
# define VELOCITYCOMPONENT_HPP

# include "pch.hpp"

struct VelocityComponent
{
    float x;
    float y;
    float z;
};

std::ostream &operator<<(std::ostream &os, const VelocityComponent &a);

#endif
