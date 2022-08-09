#include "VertexAttributes/ModelMatrixVertexAttribute.hpp"

namespace GilqEngine
{

ModelMatrixVertexAttribute::ModelMatrixVertexAttribute(const Matrix<float, 4, 4>& modelMatrix)
    : _modelMatrix(modelMatrix)
{
    TRACE();
}

VertexLayout ModelMatrixVertexAttribute::layout()
{
    TRACE();
    return (VertexLayout(4, GL_FLOAT, GL_FALSE, 16 * sizeof(float)));
}

size_t ModelMatrixVertexAttribute::size()
{
    TRACE();
    return (16 * sizeof(float));
}

}
