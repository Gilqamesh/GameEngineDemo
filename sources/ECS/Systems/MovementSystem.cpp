#include "ECS/Systems/MovementSystem.hpp"
#include "ECS/Components/PositionComponent.hpp"
#include "ECS/Components/VelocityComponent.hpp"
#include "ECS/Coordinator.hpp"

MovementSystem::MovementSystem(Coordinator *coordinator)
    : ISystem(coordinator)
{

}

void MovementSystem::update(float dt)
{
    for (auto entity : entities)
    {
        PositionComponent &position = _coordinator->getComponent<PositionComponent>(entity);
        VelocityComponent &velocity = _coordinator->getComponent<VelocityComponent>(entity);
        if (position.x + velocity.x * dt < -1 || position.x + velocity.x * dt > 1) velocity.x *= -1;
        position.x += velocity.x * dt;
        if (position.y + velocity.y * dt < -1 || position.y + velocity.y * dt > 1) velocity.y *= -1;
        position.y += velocity.y * dt;
        if (position.z + velocity.z * dt < -1 || position.z + velocity.z * dt > 1) velocity.z *= -1;
        position.z += velocity.z * dt;
    }
}

void MovementSystem::setSystemSignature()
{
    ComponentSignature movementSystemSignature;
    movementSystemSignature.set(_coordinator->getComponentId<PositionComponent>(), true);
    movementSystemSignature.set(_coordinator->getComponentId<VelocityComponent>(), true);
    _coordinator->setSystemSignature<MovementSystem>(movementSystemSignature);
}
