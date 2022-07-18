#include "ECS/Interfaces/ISystem.hpp"

namespace NAMESPACE
{

ISystem::ISystem(Coordinator *coordinator)
    : _coordinator(coordinator)
{
    TRACE();
}

}
