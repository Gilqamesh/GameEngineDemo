#include "ECS/Components/EnergyComponent.hpp"

namespace GilqEngine
{

std::ostream &operator<<(std::ostream &os, const EnergyComponent& a)
{
    TRACE();
    os << "{" << a.joules << "}";
    return (os);
}

}
