#ifndef MODELLOADSIMULATOR_HPP
# define MODELLOADSIMULATOR_HPP

# include "pch.hpp"
# include "Interfaces/ISimulator.hpp"

namespace GilqEngine
{

class ModelLoadSimulator : public ISimulator
{
public:
    virtual void main() override;
};

}

#endif
