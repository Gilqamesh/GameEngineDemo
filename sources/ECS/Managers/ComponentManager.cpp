#include "ECS/Managers/ComponentManager.hpp"

namespace GilqEngine
{

ComponentManager::ComponentManager()
    : currentId(0)
{
    TRACE();
}

ComponentManager::~ComponentManager()
{
    TRACE();
    for (auto nameToArrPair : NameToArr)
        delete nameToArrPair.second;
}

}
