#include "ECS/Systems/EnergySystem.hpp"
#include "ECS/Components/RotationalComponent3D.hpp"
#include "ECS/Components/MassComponent.hpp"
#include "ECS/Components/VelocityComponent3D.hpp"
#include "ECS/Components/EnergyComponent.hpp"
#include "ECS/Coordinator.hpp"
#include "Math/Vector.hpp"

namespace GilqEngine
{

EnergySystem::EnergySystem(Coordinator *coordinator)
    : ISystem(coordinator)
{
    TRACE();
}

void EnergySystem::onUpdate(float dt)
{
    (void)dt;
    TRACE();
    for (auto entity : entities)
    {
        MassComponent &mass = _coordinator->getComponent<MassComponent>(entity);
        VelocityComponent3D &velocity = _coordinator->getComponent<VelocityComponent3D>(entity);
        EnergyComponent &energy = _coordinator->getComponent<EnergyComponent>(entity);
        energy.joules = 1 / 2.0f * mass.m * magnitude(velocity.v) * magnitude(velocity.v);
    }
}

void EnergySystem::onRender(Shader *shader)
{
    TRACE();
    (void)shader;
}

void EnergySystem::setSystemSignature()
{
    TRACE();
    ComponentSignature energySystemSignature;
    energySystemSignature.set(_coordinator->getComponentId<MassComponent>(), true);
    energySystemSignature.set(_coordinator->getComponentId<VelocityComponent3D>(), true);
    energySystemSignature.set(_coordinator->getComponentId<RotationalComponent3D>(), true);
    energySystemSignature.set(_coordinator->getComponentId<EnergyComponent>(), true);
    _coordinator->setSystemSignature<EnergySystem>(energySystemSignature);
}

void EnergySystem::registerComponents()
{
    TRACE();
    _coordinator->registerComponent<MassComponent>();
    _coordinator->registerComponent<VelocityComponent3D>();
    _coordinator->registerComponent<RotationalComponent3D>();
    _coordinator->registerComponent<EnergyComponent>();
}

}
