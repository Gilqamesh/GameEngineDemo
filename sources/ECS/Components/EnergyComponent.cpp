#include "ECS/Components/EnergyComponent.hpp"

namespace GilqEngine
{

ostream &operator<<(ostream &os, const EnergyComponent& a)
{
    TRACE();
    os << "{" << a.joules << "}";
    return (os);
}

}
