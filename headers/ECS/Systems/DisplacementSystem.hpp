#ifndef DISPLACEMENTSYSTEM_HPP
# define DISPLACEMENTSYSTEM_HPP

# include "ECS/Interfaces/ISystem.hpp"

namespace NAMESPACE
{

class DisplacementSystem : public ISystem
{
public:
    DisplacementSystem(Coordinator *coordinator);
    virtual void onUpdate(float dt) override;
    virtual void onRender(Shader *shader) override;
    virtual void setSystemSignature() override;
    virtual void registerComponents() override;
};

}

#endif
