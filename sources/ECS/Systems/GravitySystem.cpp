#include "ECS/Systems/GravitySystem.hpp"
#include "ECS/Components/VelocityComponent.hpp"
#include "ECS/Coordinator.hpp"

namespace NAMESPACE
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
        VelocityComponent &velocity = _coordinator->getComponent<VelocityComponent>(entity);
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
    gravitySystemSignature.set(_coordinator->getComponentId<VelocityComponent>(), true);
    _coordinator->setSystemSignature<GravitySystem>(gravitySystemSignature);
}

void GravitySystem::registerComponents()
{
    TRACE();
    _coordinator->registerComponent<VelocityComponent>();
}

}
