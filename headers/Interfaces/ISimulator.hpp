#ifndef SIMULATOR_HPP
# define SIMULATOR_HPP

# include "pch.hpp"

namespace GilqEngine
{

class ISimulator
{
public:
    ISimulator() = default;
    virtual ~ISimulator() = default;

    virtual void main() = 0;
};

}

#endif
