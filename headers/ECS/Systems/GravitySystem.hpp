#ifndef GRAVITYSYSTEM_HPP
# define GRAVITYSYSTEM_HPP

# include "ECS/Interfaces/ISystem.hpp"

class GravitySystem : public ISystem
{
float _gravitationalConstant;
public:
    GravitySystem(Coordinator *coordinator);
    virtual void setSystemSignature() override;
    void update(float dt);
    inline void setGravitationalConstant(float gravitationalConstant)
    {
        _gravitationalConstant = gravitationalConstant;
    }
};

#endif
