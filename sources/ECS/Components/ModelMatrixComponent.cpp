#include "ECS/Components/ModelMatrixComponent.hpp"

namespace GilqEngine
{

std::ostream &operator<<(std::ostream &os, const ModelMatrixComponent &a)
{
    TRACE();
    os << a.m;
    return (os);   
}

}
