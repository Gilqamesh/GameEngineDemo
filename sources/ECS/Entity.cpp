#include "ECS/Entity.hpp"

namespace NAMESPACE
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
