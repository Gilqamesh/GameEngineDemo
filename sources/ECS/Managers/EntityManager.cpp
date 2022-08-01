#include "ECS/Managers/EntityManager.hpp"

namespace GilqEngine
{

EntityManager::EntityManager()
    : availableEntitiesQueueIndex(0)
{
    TRACE();
    for (EntityId i = 0; i < availableEntitiesQueue.size(); ++i)
        availableEntitiesQueue[i] = Entity(i);
}

Entity EntityManager::createEntity(void)
{
    TRACE();
    // Entities have reached the max allowed number MAX_ENTITIES
    ASSERT(availableEntitiesQueueIndex < MAX_ENTITIES);

    return (availableEntitiesQueue[availableEntitiesQueueIndex++]);
}

void EntityManager::destroyEntity(Entity entity)
{
    TRACE();
    // there are no entities in the entity manager to destroy
    ASSERT(availableEntitiesQueueIndex > 0);

    entityComponentSignature[entity._id].reset();
    availableEntitiesQueue[--availableEntitiesQueueIndex] = entity;
}

void EntityManager::setComponentSignature(Entity entity, ComponentSignature componentSignature)
{
    TRACE();
    // entity id is out of range 
    ASSERT(entity._id < MAX_ENTITIES);

    entityComponentSignature[entity._id] = componentSignature;
}

ComponentSignature &EntityManager::getComponentSignature(Entity entity)
{
    TRACE();
    // Entity does not exist in the EntityManager
    ASSERT(entity._id < MAX_ENTITIES);

    return (entityComponentSignature[entity._id]);
}

}
