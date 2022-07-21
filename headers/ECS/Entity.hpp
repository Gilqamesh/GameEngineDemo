#ifndef ENTITY_HPP
# define ENTITY_HPP

# include "ECS/Types.hpp"
# include "pch.hpp"

namespace GilqEngine
{

class EntityManager;

class Entity
{
    EntityId _id;
    friend class EntityManager;
    // Entity creation has to go through the EntityManager
    Entity(EntityId id);
public:
    operator int() const { return (int)_id; }
    Entity();
    inline EntityId getId() const { return (_id); }
};

}

#endif
