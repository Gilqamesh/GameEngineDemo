#include "ECS/Systems/DisplacementSystem.hpp"
#include "ECS/Components/PositionComponent3D.hpp"
#include "ECS/Components/VelocityComponent3D.hpp"
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
        PositionComponent3D &position = _coordinator->getComponent<PositionComponent3D>(entity);
        VelocityComponent3D &velocity = _coordinator->getComponent<VelocityComponent3D>(entity);
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
    DisplacementSystemSignature.set(_coordinator->getComponentId<PositionComponent3D>(), true);
    DisplacementSystemSignature.set(_coordinator->getComponentId<VelocityComponent3D>(), true);
    DisplacementSystemSignature.set(_coordinator->getComponentId<ModelMatrixComponent>(), true);
    _coordinator->setSystemSignature<DisplacementSystem>(DisplacementSystemSignature);
}

void DisplacementSystem::registerComponents()
{
    TRACE();
    _coordinator->registerComponent<PositionComponent3D>();
    _coordinator->registerComponent<VelocityComponent3D>();
    _coordinator->registerComponent<ModelMatrixComponent>();
}

}
