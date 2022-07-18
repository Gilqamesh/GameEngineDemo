#include "ECS/Components/MassComponent.hpp"

namespace NAMESPACE
{

std::ostream &operator<<(std::ostream &os, const MassComponent &a)
{
    TRACE();
    os << "{" << a.m << "}";
    return (os);
}

}
