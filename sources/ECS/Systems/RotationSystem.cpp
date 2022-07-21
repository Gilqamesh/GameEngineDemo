#include "ECS/Systems/RotationSystem.hpp"
#include "ECS/Components/RotationalComponent.hpp"
#include "ECS/Components/ModelMatrixComponent.hpp"
#include "ECS/Components/PositionComponent.hpp"
#include "ECS/Coordinator.hpp"

namespace GilqEngine
{

RotationSystem::RotationSystem(Coordinator *coordinator)
    : ISystem(coordinator)
{
    TRACE();

}

void RotationSystem::onUpdate(float dt)
{
    TRACE();
    for (auto entity : entities)
    {
        RotationalComponent &rotation = _coordinator->getComponent<RotationalComponent>(entity);
        ModelMatrixComponent &model = _coordinator->getComponent<ModelMatrixComponent>(entity);
        rotation.angle += dt * rotation.speed;
        model.m *= rotation_matrix(rotation.angle, rotation.axis);
    }
}

void RotationSystem::onRender(Shader *shader)
{
    TRACE();
    (void)shader;
}

void RotationSystem::setSystemSignature()
{
    TRACE();
    ComponentSignature rotationSystemSignature;
    rotationSystemSignature.set(_coordinator->getComponentId<RotationalComponent>(), true);
    rotationSystemSignature.set(_coordinator->getComponentId<ModelMatrixComponent>(), true);
    rotationSystemSignature.set(_coordinator->getComponentId<PositionComponent>(), true);
    _coordinator->setSystemSignature<RotationSystem>(rotationSystemSignature);
}

void RotationSystem::registerComponents()
{
    TRACE();
    _coordinator->registerComponent<RotationalComponent>();
    _coordinator->registerComponent<ModelMatrixComponent>();
    _coordinator->registerComponent<PositionComponent>();
}

}
