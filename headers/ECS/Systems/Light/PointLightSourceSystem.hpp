#ifndef POINTLIGHTSOURCESYSTEM_HPP
# define POINTLIGHTSOURCESYSTEM_HPP

# include "ECS/Interfaces/ISystem.hpp"

namespace GilqEngine
{

class PointLightSourceSystem : public ISystem
{
public:
    PointLightSourceSystem(Coordinator *coordinator);
    virtual void onUpdate(float dt) override;
    virtual void onRender(Shader *shader) override;
    virtual void setSystemSignature() override;
    virtual void registerComponents() override;
};

}

#endif
