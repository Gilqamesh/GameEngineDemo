#include "ECS/Coordinator.hpp"

namespace GilqEngine
{

Coordinator::Coordinator()
    : _systemManager(this)
{
    TRACE();
}

Coordinator::~Coordinator()
{
    TRACE();    
}

Entity Coordinator::createEntity()
{
    TRACE();
    return (_entityManager.createEntity());
}

void Coordinator::destroyEntity(Entity entity)
{
    TRACE();
    _entityManager.destroyEntity(entity);
    _systemManager.entityDestroyed(entity);
    _componentManager.entityDestroyed(entity);
}

void Coordinator::hideEntity(Entity entity)
{
    TRACE();
    _systemManager.hideEntity(entity);
}

void Coordinator::showEntity(Entity entity)
{
    TRACE();
    _systemManager.showEntity(entity);
}

ComponentSignature &Coordinator::getComponentSignature(Entity entity)
{
    TRACE();
    return (_entityManager.getComponentSignature(entity));
}

void Coordinator::updateSystems(float dt)
{
    TRACE();
    _systemManager.updateSystems(dt);
}

}
