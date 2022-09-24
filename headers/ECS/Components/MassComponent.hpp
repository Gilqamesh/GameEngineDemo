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

ostream &operator<<(ostream &os, const MassComponent &a);

}

#endif
