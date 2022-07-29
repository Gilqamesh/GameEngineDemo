#ifndef SYSTEMMANAGER_HPP
# define SYSTEMMANAGER_HPP

# include "ECS/Interfaces/ISystem.hpp"
# include "Debug/Trace.hpp"

namespace GilqEngine
{

class Coordinator;

class SystemManager
{
unordered_map<const char *, ComponentSignature> _nameToSignature; /* system name to its component signature */
unordered_map<const char *, ISystem *> _nameToSystems; /* system name to the sytem instance */
Coordinator *_coordinator; /* reference to the coordinator so that each system has access to it */
public:
    SystemManager(Coordinator *coordinator);
    ~SystemManager();

    /*
     * Register system of type System to the manager
     */
    template <typename System, typename... Args>
    System *registerSystem(const Args& ... args)
    {
        TRACE();
        const char *systemName = typeid(System).name();
        // System already exists in the manager
        ASSERT(_nameToSystems.count(systemName) == 0);
        _nameToSystems[systemName] = new System(_coordinator, args ...);
        _nameToSystems[systemName]->registerComponents();
        _nameToSystems[systemName]->setSystemSignature();
        return (static_cast<System *>(_nameToSystems[systemName]));
    }

    /*
     * Set the component signature for the system
     */
    template <typename System>
    void setSystemSignature(ComponentSignature componentSignature)
    {
        TRACE();
        const char *systemName = typeid(System).name();
        // System is not registered to the manager
        ASSERT(_nameToSystems.count(systemName));
        _nameToSignature[systemName] = componentSignature;
    }

    void entityDestroyed(Entity entity);

    void updateSystems(float dt);

    /*
     * Remove entity from all registered systems
     */
    void hideEntity(Entity entity);

    /*
     * Reregister entity to all previous systems it was a part of
     */
    void showEntity(Entity entity);

    /*
     * Add entity on all systems that has newComponentSignature
     */
    void entityComponentSignatureChanged(Entity entity, ComponentSignature newComponentSignature);
};

}

#endif
