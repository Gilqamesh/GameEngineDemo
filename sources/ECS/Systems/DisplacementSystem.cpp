#include "ECS/Systems/DisplacementSystem.hpp"
#include "ECS/Components/PositionComponent.hpp"
#include "ECS/Components/VelocityComponent.hpp"
#include "ECS/Components/ModelMatrixComponent.hpp"
#include "ECS/Coordinator.hpp"

namespace GilqEngine
{

DisplacementSystem::DisplacementSystem(Coordinator *coordinator)
    : ISystem(coordinator)
{
    TRACE();

}

void DisplacementSystem::onUpdate(float dt)
{
    TRACE();
    for (auto entity : entities)
    {
        PositionComponent &position = _coordinator->getComponent<PositionComponent>(entity);
        VelocityComponent &velocity = _coordinator->getComponent<VelocityComponent>(entity);
        ModelMatrixComponent &model = _coordinator->getComponent<ModelMatrixComponent>(entity);
        position.p += velocity.v * dt;
        model.m *= translation_matrix(position.p);
    }
}

void DisplacementSystem::onRender(Shader *shader)
{
    TRACE();
    (void)shader;
}

void DisplacementSystem::setSystemSignature()
{
    TRACE();
    ComponentSignature DisplacementSystemSignature;
    DisplacementSystemSignature.set(_coordinator->getComponentId<PositionComponent>(), true);
    DisplacementSystemSignature.set(_coordinator->getComponentId<VelocityComponent>(), true);
    DisplacementSystemSignature.set(_coordinator->getComponentId<ModelMatrixComponent>(), true);
    _coordinator->setSystemSignature<DisplacementSystem>(DisplacementSystemSignature);
}

void DisplacementSystem::registerComponents()
{
    TRACE();
    _coordinator->registerComponent<PositionComponent>();
    _coordinator->registerComponent<VelocityComponent>();
    _coordinator->registerComponent<ModelMatrixComponent>();
}

}
