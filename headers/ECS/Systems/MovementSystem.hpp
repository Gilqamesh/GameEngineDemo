#ifndef MOVEMENTSYSTEM_HPP
# define MOVEMENTSYSTEM_HPP

# include "ECS/Interfaces/ISystem.hpp"

class MovementSystem : public ISystem
{
public:
    MovementSystem(Coordinator *coordinator);
    virtual void update(float dt) override;
    virtual void setSystemSignature() override;
};

#endif
