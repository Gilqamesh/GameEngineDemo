#ifndef COLLISIONDEVSIMULATOR_HPP
# define COLLISIONDEVSIMULATOR_HPP

# include "pch.hpp"
# include "Interfaces/ISimulator.hpp"

namespace GilqEngine
{

class CollisionDevSimulator : public ISimulator
{
public:
    virtual void main() override;
};

}

#endif
