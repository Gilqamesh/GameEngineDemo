#include "ECS/Systems/RotationSystem.hpp"
#include "ECS/Components/RotationalComponent3D.hpp"
#include "ECS/Components/PositionComponent3D.hpp"
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
        RotationalComponent3D &rotation = _coordinator->getComponent<RotationalComponent3D>(entity);
        rotation.angle += dt * rotation.speed;
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
    rotationSystemSignature.set(_coordinator->getComponentId<RotationalComponent3D>(), true);
    rotationSystemSignature.set(_coordinator->getComponentId<PositionComponent3D>(), true);
    _coordinator->setSystemSignature<RotationSystem>(rotationSystemSignature);
}

void RotationSystem::registerComponents()
{
    TRACE();
    _coordinator->registerComponent<RotationalComponent3D>();
    _coordinator->registerComponent<PositionComponent3D>();
}

}
