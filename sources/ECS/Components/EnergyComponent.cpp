#include "ECS/Components/EnergyComponent.hpp"

namespace NAMESPACE
{

std::ostream &operator<<(std::ostream &os, const EnergyComponent& a)
{
    TRACE();
    os << "{" << a.joules << "}";
    return (os);
}

}
