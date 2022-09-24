#ifndef TYPES_HPP
# define TYPES_HPP

# include "pch.hpp"

namespace GilqEngine
{

# define MAX_COMPONENTS UINT8_MAX
typedef uint8_t ComponentId;
typedef bitset<MAX_COMPONENTS> ComponentSignature;

typedef uint16_t EntityId;
# define MAX_ENTITIES UINT16_MAX

}

#endif
