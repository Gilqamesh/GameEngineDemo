#ifndef MODELMATRIXCOMPONENT_HPP
# define MODELMATRIXCOMPONENT_HPP

# include "pch.hpp"
# include "Math/Matrix.hpp"

namespace GilqEngine
{

struct ModelMatrixComponent
{
    Matrix<float, 4, 4> m;
};

std::ostream &operator<<(std::ostream &os, const ModelMatrixComponent &a);

}

#endif
