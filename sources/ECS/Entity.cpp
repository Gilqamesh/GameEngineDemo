#include "ECS/Entity.hpp"

namespace GilqEngine
{

Entity::Entity()
{
    TRACE();
    
}

Entity::Entity(EntityId id)
    : _id(id)
{
    TRACE();

}

}
