#include "ECS/Managers/SystemManager.hpp"

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
    for (auto &nameToSystem : nameToSystems)
        delete nameToSystem.second;
    nameToSystems.clear();
}

}
