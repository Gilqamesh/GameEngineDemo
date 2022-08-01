#ifndef ENTITYMANAGER_HPP
# define ENTITYMANAGER_HPP

# include "pch.hpp"
# include "ECS/Entity.hpp"
# include "ECS/Managers/ComponentManager.hpp"

namespace GilqEngine
{

/*
 * Distributes available entities
 * Bookkeeps entities component signature
 */
class EntityManager
{
array<ComponentSignature, MAX_ENTITIES> entityComponentSignature; /* the array is indexed by the entity id, each element holds the components of an entity */
array<Entity, MAX_ENTITIES> availableEntitiesQueue; /* available entities to distribute held by the entity manager */
EntityId availableEntitiesQueueIndex;
public:
    /*
     * Initializes the available entities to distribute later
     */
    EntityManager();

    /*
     * Returns an available entity
     */
    Entity createEntity(void);

    /*
     * Destroys entity and adds it back to the entity manager as an available entity
     */
    void destroyEntity(Entity entity);

    /*
     * Sets the component signature for the entity
     */
    void setComponentSignature(Entity entity, ComponentSignature ComponentSignature);

    /*
     * Gets the component signature for the entity
     */
    ComponentSignature &getComponentSignature(Entity entity);
};

}

#endif
