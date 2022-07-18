#include "ECS/Systems/MomentumSystem.hpp"
#include "ECS/Components/MassComponent.hpp"
#include "ECS/Components/VelocityComponent.hpp"
#include "ECS/Components/MomentumComponent.hpp"
#include "ECS/Coordinator.hpp"

namespace NAMESPACE
{

MomentumSystem::MomentumSystem(Coordinator *coordinator)
    : ISystem(coordinator)
{
    TRACE();

}

void MomentumSystem::onUpdate(float dt)
{
    TRACE();
    for (auto entity : entities)
    {
        MassComponent &mass = _coordinator->getComponent<MassComponent>(entity);
        VelocityComponent &velocity = _coordinator->getComponent<VelocityComponent>(entity);
        MomentumComponent &momentum = _coordinator->getComponent<MomentumComponent>(entity);
        momentum.p = mass.m * velocity.v * dt;
    }
}

void MomentumSystem::onRender(Shader *shader)
{
    TRACE();
    (void)shader;
}

void MomentumSystem::setSystemSignature()
{
    TRACE();
    ComponentSignature momentumSystemSignature;
    momentumSystemSignature.set(_coordinator->getComponentId<MassComponent>(), true);
    momentumSystemSignature.set(_coordinator->getComponentId<VelocityComponent>(), true);
    momentumSystemSignature.set(_coordinator->getComponentId<MomentumComponent>(), true);
    _coordinator->setSystemSignature<MomentumSystem>(momentumSystemSignature);
}

void MomentumSystem::registerComponents()
{
    TRACE();
    _coordinator->registerComponent<MassComponent>();
    _coordinator->registerComponent<VelocityComponent>();
    _coordinator->registerComponent<MomentumComponent>();
}

}
