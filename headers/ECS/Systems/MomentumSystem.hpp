#ifndef MOMENTUMSYSTEM_HPP
# define MOMENTUMSYSTEM_HPP

# include "ECS/Interfaces/ISystem.hpp"

namespace NAMESPACE
{

class MomentumSystem : public ISystem
{
public:
    MomentumSystem(Coordinator *coordinator);
    virtual void onUpdate(float dt) override;
    virtual void onRender(Shader *shader) override;
    virtual void setSystemSignature() override;
    virtual void registerComponents() override;
};

}

#endif
