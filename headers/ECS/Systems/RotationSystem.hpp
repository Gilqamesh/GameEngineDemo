#ifndef ROTATIONSYSTEM_HPP
# define ROTATIONSYSTEM_HPP

# include "ECS/Interfaces/ISystem.hpp"

namespace GilqEngine
{

class RotationSystem : public ISystem
{
public:
    RotationSystem(Coordinator *coordinator);
    virtual void onUpdate(float dt) override;
    virtual void onRender(Shader *shader) override;
    virtual void setSystemSignature() override;
    virtual void registerComponents() override;
};

}

#endif
