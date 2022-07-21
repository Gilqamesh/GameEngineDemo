#ifndef MASSCOMPONENT_HPP
# define MASSCOMPONENT_HPP

# include "pch.hpp"

namespace GilqEngine
{

class MassComponent
{
public:
    float m;
};

std::ostream &operator<<(std::ostream &os, const MassComponent &a);

}

#endif
