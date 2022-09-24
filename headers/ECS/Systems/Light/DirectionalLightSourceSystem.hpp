#ifndef DIRECTIONALLIGHTSOURCESYSTEM_HPP
# define DIRECTIONALLIGHTSOURCESYSTEM_HPP

# include "ECS/Interfaces/ISystem.hpp"

namespace GilqEngine
{

class DirectionalLightSourceSystem : public ISystem
{
public:
    DirectionalLightSourceSystem(Coordinator *coordinator);
    virtual void onUpdate(float dt) override;
    virtual void onRender(Shader *shader) override;
    virtual void setSystemSignature() override;
    virtual void registerComponents() override;
};

}

#endif
