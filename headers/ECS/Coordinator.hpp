#ifndef COORDINATOR_HPP
# define COORDINATOR_HPP

# include "ECS/Managers/EntityManager.hpp"
# include "ECS/Managers/ComponentManager.hpp"
# include "ECS/Managers/SystemManager.hpp"

namespace NAMESPACE
{

/*
 * Mediates between the managers
 */
class Coordinator
{
EntityManager _entityManager;
ComponentManager _componentManager;
SystemManager _systemManager;
public:
    Coordinator();
    ~Coordinator();

    // Entity methods

    /*
     * Returns an available entity
     */
    Entity createEntity();

    /*
     * Destroys entity
     * Adds the entity back to the available entity pool
     * Removes any bookkeeping for the entity
     */
    void destroyEntity(Entity entity);

    // Component methods

    /*
     * Register component of type T
     */
    template <typename T>
    void registerComponent()
    {
        TRACE();
        _componentManager.registerComponent<T>();
    }

    /*
     * Adds a component type T to an entity
     */
    template <typename T>
    void attachComponent(Entity entity, T component)
    {
        TRACE();
        ComponentSignature newEntityComponentSignature = _entityManager.getComponentSignature(entity);
        newEntityComponentSignature.set(_componentManager.getComponentId<T>(), true);
        _entityManager.setComponentSignature(entity, newEntityComponentSignature);
        _componentManager.attachComponent(entity, component);
        _systemManager.entityComponentSignatureChanged(entity, newEntityComponentSignature);
    }

    /*
     * Removes a component of type T from an entity
     */
    template <typename T>
    void removeComponent(Entity entity)
    {
        TRACE();
        ComponentSignature newEntityComponentSignature
            = _entityManager.getComponentSignature(entity).reset(_componentManager.getComponentId<T>());
        _entityManager.setComponentSignature(entity, newEntityComponentSignature);
        _componentManager.removeComponent<T>(entity);
        _systemManager.entityComponentSignatureChanged(entity, newEntityComponentSignature);
    }

    /*
     * Returns the component data of type T in entity
     */
    template <typename T>
    T& getComponent(Entity entity)
    {
        TRACE();
        return (_componentManager.getComponent<T>(entity));
    }

    /*
     * Returns the unique id held for the component of type T
     */
    template <typename T>
    ComponentId getComponentId() const
    {
        TRACE();
        return (_componentManager.getComponentId<T>());
    }

    /*
     * Tests if entity has a component of type T
     */
    template <typename T>
    bool hasComponent(Entity entity)
    {
        TRACE();
        return (_entityManager.getComponentSignature(entity).test(getComponentId<T>()));
    }

    // System methods

    /*
     * Register system of type T
     */
    template <typename T>
    T *registerSystem()
    {
        TRACE();
        return (_systemManager.registerSystem<T>());
    }

    /*
     * Set the component signature for the system
     * Should be used by the system the set up its signature
     */
    template <typename T>
    void setSystemSignature(ComponentSignature componentSignature)
    {
        TRACE();
        _systemManager.setSystemSignature<T>(componentSignature);
    }

    /*
     * 
     */
    void print() const
    {
        TRACE();
        _componentManager.print();
    }
};

}

#endif
