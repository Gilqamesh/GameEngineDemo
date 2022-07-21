#ifndef ENERGYSYSTEM_HPP
# define ENERGYSYSTEM_HPP

# include "ECS/Interfaces/ISystem.hpp"

namespace GilqEngine
{

class EnergySystem : public ISystem
{
public:
    EnergySystem(Coordinator *coordinator);
    virtual void onUpdate(float dt) override;
    virtual void onRender(Shader *shader) override;
    virtual void setSystemSignature() override;
    virtual void registerComponents() override;
};

}

#endif
