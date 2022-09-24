#ifndef ISYSTEM_HPP
# define ISYSTEM_HPP

# include "pch.hpp"
# include "ECS/Entity.hpp"
# include "ECS/Types.hpp"

namespace GilqEngine
{

class Coordinator;
class Shader;

class ISystem
{
friend class SystemManager;
protected:
    unordered_set<Entity, hash<int>> entities; /* list of entities that needs to be updated by the system */
    Coordinator *_coordinator; /* reference to the coordinator so that the system can update entity component data */
public:
    ISystem(Coordinator *coordinator);
    virtual ~ISystem() = default;

    virtual void onUpdate(float dt) = 0;
    virtual void onRender(Shader *shader) = 0;

    /*
     * Registers system's prerequisite components as a signature
     */
    virtual void setSystemSignature() = 0;

    /*
     * Registers system's prerequisite components
     */
    virtual void registerComponents() = 0;
};

}

#endif
