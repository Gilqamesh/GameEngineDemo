#include "ECS/Components/MassComponent.hpp"

namespace GilqEngine
{

ostream &operator<<(ostream &os, const MassComponent &a)
{
    TRACE();
    os << "{" << a.m << "}";
    return (os);
}

}
