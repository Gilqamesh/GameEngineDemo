#ifndef ECSCOORDINATORSIMULATOR_HPP
# define ECSCOORDINATORSIMULATOR_HPP

# include "pch.hpp"
# include "Interfaces/ISimulator.hpp"

namespace GilqEngine
{

class ECSCoordinatorSimulator : public ISimulator
{
public:
    virtual void main() override;
};

}

#endif
