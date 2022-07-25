#include "ECS/Components/ModelMatrixComponent.hpp"

namespace GilqEngine
{

ModelMatrixComponent::ModelMatrixComponent(const Matrix<float, 4, 4>& modelMatrix)
    : m(modelMatrix)
{

}

ostream &operator<<(ostream &os, const ModelMatrixComponent &a)
{
    TRACE();
    os << a.m;
    return (os);   
}

}
