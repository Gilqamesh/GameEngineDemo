#include "ECS/Systems/BoundaryBoxSystem.hpp"
#include "ECS/Components/PositionComponent.hpp"
#include "ECS/Components/VelocityComponent.hpp"
#include "ECS/Components/EnergyComponent.hpp"
#include "ECS/Components/MassComponent.hpp"
#include "ECS/Components/RotationalComponent.hpp"
#include "ECS/Coordinator.hpp"

namespace GilqEngine
{

BoundaryBoxSystem::BoundaryBoxSystem(Coordinator *coordinator)
    : ISystem(coordinator),
    _bottomCorner(-100.0f, -20.0f, -100.0f),
    _upperCorner(100.0f, 200.0f, 100.0f)
{
    TRACE();
}

void BoundaryBoxSystem::onUpdate(float dt)
{
    TRACE();
    for (auto entity : entities)
    {
        PositionComponent &position = _coordinator->getComponent<PositionComponent>(entity);
        VelocityComponent &velocity = _coordinator->getComponent<VelocityComponent>(entity);
        RotationalComponent &rotation = _coordinator->getComponent<RotationalComponent>(entity);
        MassComponent &mass = _coordinator->getComponent<MassComponent>(entity);
        EnergyComponent &energy = _coordinator->getComponent<EnergyComponent>(entity);
        // Check next event and prevent going over the Boundary Box
        if (position.p[0] + velocity.v[0] * dt < _bottomCorner[0]
            || position.p[0] + velocity.v[0] * dt > _upperCorner[0])
        {
            rotation.speed *= 0.5f;
            energy.joules *= 0.5f;
            velocity.v[0] *= -1;
            velocity.v = normalize(velocity.v) * std::sqrt(2 * energy.joules / mass.m);
        }
        if (position.p[1] + velocity.v[1] * dt < _bottomCorner[1]
            || position.p[1] + velocity.v[1] * dt > _upperCorner[1])
        {
            rotation.speed *= 0.5f;
            energy.joules *= 0.5f;
            velocity.v[1] *= -1;
            if (energy.joules < 0.001f)
            {
                velocity.v = Vector<float, 3>();
            }
            velocity.v = normalize(velocity.v) * std::sqrt(2 * energy.joules / mass.m);
        }
        if (position.p[2] + velocity.v[2] * dt < _bottomCorner[2]
            || position.p[2] + velocity.v[2] * dt > _upperCorner[2])
        {
            rotation.speed *= 0.5f;
            energy.joules *= 0.5f;
            velocity.v[2] *= -1;
            velocity.v = normalize(velocity.v) * std::sqrt(2 * energy.joules / mass.m);
        }
    }
}

void BoundaryBoxSystem::onRender(Shader *shader)
{
    TRACE();
    (void)shader;
}

void BoundaryBoxSystem::setSystemSignature()
{
    TRACE();
    ComponentSignature boundaryBoxSystemSignature;
    boundaryBoxSystemSignature.set(_coordinator->getComponentId<PositionComponent>(), true);
    boundaryBoxSystemSignature.set(_coordinator->getComponentId<VelocityComponent>(), true);
    boundaryBoxSystemSignature.set(_coordinator->getComponentId<EnergyComponent>(), true);
    boundaryBoxSystemSignature.set(_coordinator->getComponentId<RotationalComponent>(), true);
    boundaryBoxSystemSignature.set(_coordinator->getComponentId<MassComponent>(), true);
    _coordinator->setSystemSignature<BoundaryBoxSystem>(boundaryBoxSystemSignature);
}

void BoundaryBoxSystem::registerComponents()
{
    TRACE();
    _coordinator->registerComponent<PositionComponent>();
    _coordinator->registerComponent<VelocityComponent>();
    _coordinator->registerComponent<EnergyComponent>();
    _coordinator->registerComponent<RotationalComponent>();
    _coordinator->registerComponent<MassComponent>();
}

}
