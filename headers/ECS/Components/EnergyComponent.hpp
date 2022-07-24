#ifndef ENERGYCOMPONENT_HPP
# define ENERGYCOMPONENT_HPP

# include "pch.hpp"

namespace GilqEngine
{

class EnergyComponent
{
public:
    float joules;
};

ostream &operator<<(ostream &os, const EnergyComponent& a);

}

#endif
