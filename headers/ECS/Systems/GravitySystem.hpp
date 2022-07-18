#ifndef GRAVITYSYSTEM_HPP
# define GRAVITYSYSTEM_HPP

# include "ECS/Interfaces/ISystem.hpp"

namespace NAMESPACE
{

class GravitySystem : public ISystem
{
float _gravitationalConstant;
public:
    GravitySystem(Coordinator *coordinator);
    virtual void setSystemSignature() override;
    virtual void registerComponents() override;
    virtual void onUpdate(float dt) override;
    virtual void onRender(Shader *shader) override;
    inline void setGravitationalConstant(float gravitationalConstant)
    {
        _gravitationalConstant = gravitationalConstant;
    }
};

}

#endif
