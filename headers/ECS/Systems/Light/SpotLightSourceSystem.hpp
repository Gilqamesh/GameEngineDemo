#ifndef SPOTLIGHTSOURCESYSTEM_HPP
# define SPOTLIGHTSOURCESYSTEM_HPP

# include "ECS/Interfaces/ISystem.hpp"

namespace NAMESPACE
{

class SpotLightSourceSystem : public ISystem
{
public:
    SpotLightSourceSystem(Coordinator *coordinator);
    virtual void onUpdate(float dt) override;
    virtual void onRender(Shader *shader) override;
    virtual void setSystemSignature() override;
    virtual void registerComponents() override;
};

}

#endif
