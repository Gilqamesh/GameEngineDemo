#ifndef ISYSTEM_HPP
# define ISYSTEM_HPP

# include "pch.hpp"
# include "ECS/Entity.hpp"
# include "ECS/Types.hpp"

class Coordinator;

class ISystem
{
friend class SystemManager;
protected:
    std::unordered_set<Entity, std::hash<int>> entities; /* list of entities that needs to be updated by the system */
    Coordinator *_coordinator; /* reference to the coordinator so that the system can update entity component data */
public:
    ISystem(Coordinator *coordinator);
    virtual void setSystemSignature() = 0;
};

#endif
