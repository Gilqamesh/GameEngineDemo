#ifndef MODELMATRIXVERTEXATTRIBUTE_HPP
# define MODELMATRIXVERTEXATTRIBUTE_HPP

# include "Interfaces/IVertexAttribute.hpp"

namespace GilqEngine
{
class ModelMatrixVertexAttribute : public IVertexAttribute
{
Matrix<float, 4, 4> _modelMatrix;
public:
    ModelMatrixVertexAttribute() = default;
    ModelMatrixVertexAttribute(const Matrix<float, 4, 4>& modelMatrix);
    /**
     * Since a vertex attribute's data can only be up to 4, this function returns with a layout of 4.
     * So this needs to be called 4 times, each time with 4 * sizeof(float) offsets
     */
    static VertexLayout getLayout();
    size_t getSize();
};

}

#endif
