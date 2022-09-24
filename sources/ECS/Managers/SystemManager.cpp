#include "ECS/Managers/SystemManager.hpp"
#include "ECS/Coordinator.hpp"
#include "Log.hpp"

namespace GilqEngine
{

SystemManager::SystemManager(Coordinator *coordinator)
    : _coordinator(coordinator)
{
    TRACE();
    
}

SystemManager::~SystemManager()
{
    TRACE();
    for (auto &p : _nameToSystems)
    {
        delete p.second;
    }
    _nameToSystems.clear();
}

void SystemManager::entityDestroyed(Entity entity)
{
    TRACE();
    _coordinator->destroyEntity(entity);
    for (auto &p : _nameToSystems)
    {
        p.second->entities.erase(entity);
    }
}

void SystemManager::updateSystems(float dt)
{
    TRACE();
    for (auto p : _nameToSystems)
    {
        p.second->onUpdate(dt);
    }
}

void SystemManager::hideEntity(Entity entity)
{
    TRACE();
    for (auto p : _nameToSystems)
    {
        p.second->entities.erase(entity);
    }
}

void SystemManager::showEntity(Entity entity)
{
    TRACE();
    for (auto p : _nameToSignature)
    {
        if ((_coordinator->getComponentSignature(entity) & p.second) == p.second)
        {
            _nameToSystems[p.first]->entities.insert(entity);
        }
    }
}

void SystemManager::entityComponentSignatureChanged(Entity entity, ComponentSignature newComponentSignature)
{
    TRACE();
    for (auto p : _nameToSignature)
    {
        // if newComponentSignature matches with the system's prerequesite
        if ((p.second & newComponentSignature) == p.second)
        {
            _nameToSystems[p.first]->entities.insert(entity);
        }
        else
        {
            _nameToSystems[p.first]->entities.erase(entity);
        }
    }
}

}
