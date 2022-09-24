#ifndef COMPONENTMANAGER_HPP
# define COMPONENTMANAGER_HPP

# include "pch.hpp"
# include "ECS/ComponentArray.hpp"
# include "ECS/Types.hpp"

namespace GilqEngine
{

/*
 * Bookkeeps component arrays
 * Provides an api to manage entity component relationship
 * Distributes unique IDs for each component (the bit in the bitset for a ComponentSignature)
 */
class ComponentManager
{
std::unordered_map<const char *, ComponentId> NameToId; /* component name to component id */
std::unordered_map<const char *, IComponentArray *> NameToArr; /* component name to component array */
ComponentId currentId;
public:
    ComponentManager();

    ~ComponentManager();

    /*
     * Register component of type Component to the manager
     */
    template <typename Component>
    void registerComponent()
    {
        TRACE();
        const char *componentName = typeid(Component).name();
        if (NameToId.count(componentName)) return ; // if component already registered do nothing
        // Number of components in the manager reached maximum size MAX_COMPONENTS
        ASSERT(currentId != MAX_COMPONENTS);
        // Component type is already registered
        ASSERT(NameToId.count(componentName) == 0);
        NameToId[componentName] = currentId++;
        NameToArr[componentName] = new ComponentArray<Component>();
    }

    /*
     * Returns the id (essentially the bit in the bitset) held for the component of type Component
     */
    template <typename Component>
    ComponentId getComponentId()
    {
        TRACE();
        const char *componentName = typeid(Component).name();
        registerComponent<Component>();
        return (NameToId.at(componentName));
    }

    /*
     * Adds a component type Component to an entity
     */
    template <typename Component>
    void attachComponent(Entity entity, Component component)
    {
        TRACE();
        const char *componentName = typeid(Component).name();
        // Component type is not registered
        ASSERT(NameToArr.count(componentName));
        static_cast<ComponentArray<Component> *>(NameToArr[componentName])->insertData(entity, component);
    }

    /*
     * Updates existing component on an entity
     */
    template <typename Component>
    void updateComponent(Entity entity, const Component& component)
    {
        TRACE();
        const char *componentName = typeid(Component).name();
        ASSERT(NameToArr.count(componentName));
        static_cast<ComponentArray<Component> *>(NameToArr[componentName])->updateComponent(entity, component);
    }

    /*
     * Removes a component of type Component from an entity
     */
    template <typename Component>
    void removeComponent(Entity entity)
    {
        TRACE();
        const char *componentName = typeid(Component).name();
        // Component type is not registered
        ASSERT(NameToArr.count(componentName));
        return (static_cast<ComponentArray<Component> *>(NameToArr[componentName])->removeData(entity));
    }

    /*
     * Returns the component data of type Component in entity
     */
    template <typename Component>
    Component& getComponent(Entity entity)
    {
        TRACE();
        const char *componentName = typeid(Component).name();
        // Component type is not registered
        ASSERT(NameToArr.count(componentName));
        return (static_cast<ComponentArray<Component> *>(NameToArr[componentName])->getData(entity));
    }

    /*
     * Updates all component arrays when entity is destroyed
     */
    void entityDestroyed(Entity entity)
    {
        TRACE();
        for (const auto &nameToArrPair : NameToArr)
        {
            nameToArrPair.second->entityDestroyed(entity);
        }
    }

    /*
     * Prints out the ids associated with component names
     * For each of these components, it also prints their underlying data
     */
    void print() const
    {
        TRACE();
        for (const auto &nameToIdPair : NameToId)
        {
            std::cout << "Component name: " << nameToIdPair.first << std::string(", component id: ") << (int)nameToIdPair.second << std::endl;
            NameToArr.at(nameToIdPair.first)->print();
        }
    }
};

}

#endif
