#include "ECS/Systems/GravitySystem.hpp"
#include "ECS/Components/VelocityComponent3D.hpp"
#include "ECS/Coordinator.hpp"

namespace GilqEngine
{

GravitySystem::GravitySystem(Coordinator *coordinator)
    : ISystem(coordinator), _gravitationalConstant(0.1f)
{
    TRACE();

}

void GravitySystem::onUpdate(float dt)
{
    TRACE();
    for (auto entity : entities)
    {
        VelocityComponent3D &velocity = _coordinator->getComponent<VelocityComponent3D>(entity);
        velocity.v[1] -= _gravitationalConstant * dt;
    }
}

void GravitySystem::onRender(Shader *shader)
{
    TRACE();
    (void)shader;
}

void GravitySystem::setSystemSignature()
{
    TRACE();
    ComponentSignature gravitySystemSignature;
    gravitySystemSignature.set(_coordinator->getComponentId<VelocityComponent3D>(), true);
    _coordinator->setSystemSignature<GravitySystem>(gravitySystemSignature);
}

void GravitySystem::registerComponents()
{
    TRACE();
    _coordinator->registerComponent<VelocityComponent3D>();
}

}
