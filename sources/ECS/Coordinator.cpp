#include "ECS/Coordinator.hpp"

namespace NAMESPACE
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

}
