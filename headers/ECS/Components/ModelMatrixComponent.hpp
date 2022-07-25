#ifndef MODELMATRIXCOMPONENT_HPP
# define MODELMATRIXCOMPONENT_HPP

# include "pch.hpp"

namespace GilqEngine
{

struct ModelMatrixComponent
{
    ModelMatrixComponent() = default;
    ModelMatrixComponent(const Matrix<float, 4, 4>& modelMatrix);
    Matrix<float, 4, 4> m;
};

ostream &operator<<(ostream &os, const ModelMatrixComponent &a);

}

#endif
