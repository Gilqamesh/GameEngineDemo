#ifndef COORDINATOR_HPP
# define COORDINATOR_HPP

# include "ECS/Managers/EntityManager.hpp"
# include "ECS/Managers/ComponentManager.hpp"
# include "ECS/Managers/SystemManager.hpp"

namespace GilqEngine
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

    /*
     * Disable/Enable the update and rendering of the entity
     */
    void hideEntity(Entity entity);
    void showEntity(Entity entity);

    ComponentSignature getComponentSignature(Entity entity);

    // Component methods

    /*
     * Register component of type T
     */
    template <typename Component>
    void registerComponent()
    {
        TRACE();
        _componentManager.registerComponent<Component>();
    }

    /*
     * Adds a component type Component to an entity
     */
    template <typename Component>
    void attachComponent(Entity entity, Component component)
    {
        TRACE();
        ComponentSignature newEntityComponentSignature = _entityManager.getComponentSignature(entity);
        newEntityComponentSignature.set(_componentManager.getComponentId<Component>(), true);
        _entityManager.setComponentSignature(entity, newEntityComponentSignature);
        _componentManager.attachComponent(entity, component);
        _systemManager.entityComponentSignatureChanged(entity, newEntityComponentSignature);
    }

    /*
     * Updates existing component on an entity
     */
    template <typename Component>
    void updateComponent(Entity entity, Component component)
    {
        _componentManager.updateComponent(entity, component);
    }

    /*
     * Removes a component of type T from an entity
     */
    template <typename Component>
    void removeComponent(Entity entity)
    {
        TRACE();
        ComponentSignature newEntityComponentSignature
            = _entityManager.getComponentSignature(entity).reset(_componentManager.getComponentId<Component>());
        _entityManager.setComponentSignature(entity, newEntityComponentSignature);
        _componentManager.removeComponent<Component>(entity);
        _systemManager.entityComponentSignatureChanged(entity, newEntityComponentSignature);
    }

    /*
     * Returns the component data of type Component in entity
     */
    template <typename Component>
    Component& getComponent(Entity entity)
    {
        TRACE();
        return (_componentManager.getComponent<Component>(entity));
    }

    /*
     * Returns the unique id held for the component of type Component
     */
    template <typename Component>
    ComponentId getComponentId() const
    {
        TRACE();
        return (_componentManager.getComponentId<Component>());
    }

    /*
     * Tests if entity has a component of type Component
     */
    template <typename Component>
    bool hasComponent(Entity entity)
    {
        TRACE();
        return (_entityManager.getComponentSignature(entity).test(getComponentId<Component>()));
    }

    // System methods

    /*
     * Register system of type System
     */
    template <typename System, typename... Args>
    System *registerSystem(const Args& ... args)
    {
        TRACE();
        return (_systemManager.registerSystem<System>(args ...));
    }

    void updateSystems(float dt);

    /*
     * Set the component signature for the system
     * Should be used by the system the set up its signature
     */
    template <typename System>
    void setSystemSignature(ComponentSignature componentSignature)
    {
        TRACE();
        _systemManager.setSystemSignature<System>(componentSignature);
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
