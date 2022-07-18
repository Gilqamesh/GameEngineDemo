#include "ECS/Components/ModelMatrixComponent.hpp"

namespace NAMESPACE
{

std::ostream &operator<<(std::ostream &os, const ModelMatrixComponent &a)
{
    TRACE();
    os << a.m;
    return (os);   
}

}
