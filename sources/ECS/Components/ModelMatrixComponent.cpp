#include "ECS/Components/ModelMatrixComponent.hpp"

namespace GilqEngine
{

ostream &operator<<(ostream &os, const ModelMatrixComponent &a)
{
    TRACE();
    os << a.m;
    return (os);   
}

}
