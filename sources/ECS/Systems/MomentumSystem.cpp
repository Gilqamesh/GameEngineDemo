#include "ECS/Systems/MomentumSystem.hpp"
#include "ECS/Components/MassComponent.hpp"
#include "ECS/Components/VelocityComponent3D.hpp"
#include "ECS/Components/MomentumComponent.hpp"
#include "ECS/Coordinator.hpp"

namespace GilqEngine
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
        VelocityComponent3D &velocity = _coordinator->getComponent<VelocityComponent3D>(entity);
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
    momentumSystemSignature.set(_coordinator->getComponentId<VelocityComponent3D>(), true);
    momentumSystemSignature.set(_coordinator->getComponentId<MomentumComponent>(), true);
    _coordinator->setSystemSignature<MomentumSystem>(momentumSystemSignature);
}

void MomentumSystem::registerComponents()
{
    TRACE();
    _coordinator->registerComponent<MassComponent>();
    _coordinator->registerComponent<VelocityComponent3D>();
    _coordinator->registerComponent<MomentumComponent>();
}

}
