#include "ECS/Components/MassComponent.hpp"

namespace GilqEngine
{

std::ostream &operator<<(std::ostream &os, const MassComponent &a)
{
    TRACE();
    os << "{" << a.m << "}";
    return (os);
}

}
