#ifndef COMPONENTARRAY_HPP
# define COMPONENTARRAY_HPP

# include "pch.hpp"
# include "ECS/Interfaces/IComponentArray.hpp"
# include "ECS/Entity.hpp"

namespace GilqEngine
{

/*
 * Bookkeeps what entities are associated with a specific implementation of a Component
 */
template <typename Component>
class ComponentArray : public IComponentArray
{
array<Component, MAX_ENTITIES>            _data; /* packed component _data for entities */
unordered_map<Entity, size_t, hash<int> > _entityToData; /* maps entity id to '_data' index */
unordered_map<size_t, Entity>             _dataToEntity; /* maps '_data' index to entity id */
size_t                                    _currentSize; /* size of valid entries in '_data' */
public:
    ComponentArray() : _currentSize(0) { }
    
    /*
     * Adds entity to the component array
     * Essentially adding a new component to an Entity
     */
    void insertData(Entity entity, Component component)
    {
        ASSERT(_entityToData.count(entity) == 0);

        _entityToData[entity] = _currentSize;
        _dataToEntity[_currentSize] = entity;
        _data[_currentSize++] = component;
    }

    /*
     * Updates existing component on an entity
     */
    void updateComponent(Entity entity, const Component& component)
    {
        ASSERT(_entityToData.count(entity));

        _data[_entityToData[entity]] = component;
    }

    /*
     * Removes an entity from the component array
     * Essentially removes a component from an Entity
     */
    void removeData(Entity entity)
    {
        // "Entity does not exist in component."
        ASSERT(_entityToData.count(entity));

        size_t removedIndex = _entityToData[entity];
        // replacing the old '_data' with the last '_data'
        _data[removedIndex] = _data[_currentSize - 1];
        Entity lastEntity = _dataToEntity[_currentSize - 1];
        _entityToData[lastEntity] = removedIndex;
        _dataToEntity[removedIndex] = lastEntity;

        // erasing old entry
        _entityToData.erase(entity);
        _dataToEntity.erase(--_currentSize);
    }

    /*
     * Returns the component associated with the entity
     */
    Component& getData(Entity entity)
    {
        // "Entity does not exist in component."
        ASSERT(_entityToData.count(entity));

        return (_data[_entityToData[entity]]);
    }

    /*
     * Removes the entity from the component array
     */
    virtual void entityDestroyed(Entity entity) override
    {
        if (_entityToData.count(entity))
            removeData(entity);
    }

    /*
     * Check if entity exists in the component array
     */
    bool hasEntity(Entity entity) const
    {
        return (_entityToData.count(entity) > 0);
    }

    /*
     * Prints the entities stored in the component array
     */
    virtual void print() const override
    {
        for (size_t i = 0; i < _currentSize; ++i)
            cout << "[Entity id: " << _dataToEntity.at(i) << ", _data: " << _data.at(i) << "], ";
        cout << endl;
    }
};

}

#endif
