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

std::ostream &operator<<(std::ostream &os, const EnergyComponent& a);

}

#endif
