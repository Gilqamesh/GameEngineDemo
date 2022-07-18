#ifndef ENERGYCOMPONENT_HPP
# define ENERGYCOMPONENT_HPP

# include "pch.hpp"

namespace NAMESPACE
{

class EnergyComponent
{
public:
    float joules;
};

std::ostream &operator<<(std::ostream &os, const EnergyComponent& a);

}

#endif
