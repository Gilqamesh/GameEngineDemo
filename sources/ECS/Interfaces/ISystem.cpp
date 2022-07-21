#include "ECS/Interfaces/ISystem.hpp"

namespace GilqEngine
{

ISystem::ISystem(Coordinator *coordinator)
    : _coordinator(coordinator)
{
    TRACE();
}

}
