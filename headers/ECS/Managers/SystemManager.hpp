#ifndef SYSTEMMANAGER_HPP
# define SYSTEMMANAGER_HPP

# include "ECS/Interfaces/ISystem.hpp"
# include "Debug/Trace.hpp"

namespace GilqEngine
{

class Coordinator;

class SystemManager
{
std::unordered_map<const char *, ComponentSignature> nameToSignature; /* system name to its component signature */
std::unordered_map<const char *, ISystem *> nameToSystems; /* system name to the sytem instance */
Coordinator *_coordinator; /* reference to the coordinator so that each system has access to it */
public:
    SystemManager(Coordinator *coordinator);
    ~SystemManager();

    /*
     * Register system of type T to the manager
     */
    template <typename T>
    T *registerSystem()
    {
        TRACE();
        const char *systemName = typeid(T).name();
        // System already exists in the manager
        ASSERT(nameToSystems.count(systemName) == 0);
        nameToSystems[systemName] = new T(_coordinator);
        nameToSystems[systemName]->registerComponents();
        nameToSystems[systemName]->setSystemSignature();
        return (static_cast<T *>(nameToSystems[systemName]));
    }

    /*
     * Set the component signature for the system
     */
    template <typename T>
    void setSystemSignature(ComponentSignature componentSignature)
    {
        TRACE();
        const char *systemName = typeid(T).name();
        // System is not registered to the manager
        ASSERT(nameToSystems.count(systemName));
        nameToSignature[systemName] = componentSignature;
    }

    /*
     * Remove entity from all registered systems
     */
    void entityDestroyed(Entity entity)
    {
        TRACE();
        for (auto systemPair : nameToSystems)
        {
            systemPair.second->entities.erase(entity);
        }
    }

    /*
     * Add entity on all systems that has newComponentSignature
     */
    void entityComponentSignatureChanged(Entity entity, ComponentSignature newComponentSignature)
    {
        TRACE();
        for (auto nameToSignaturePair : nameToSignature)
        {
            // if newComponentSignature matches with the system's prerequesite
            if ((nameToSignaturePair.second & newComponentSignature) == nameToSignaturePair.second)
            {
                nameToSystems[nameToSignaturePair.first]->entities.insert(entity);
            }
            else
            {
                nameToSystems[nameToSignaturePair.first]->entities.erase(entity);
            }
        }
    }
};

}

#endif
