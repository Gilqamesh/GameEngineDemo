#include "VertexAttributes/VertexAttributeMat4.hpp"

namespace GilqEngine
{

VertexAttributeMat4::VertexAttributeMat4(const Matrix<float, 4, 4>& m)
    : _m(m)
{
    TRACE();
}

VertexLayout VertexAttributeMat4::layout()
{
    TRACE();
    return (VertexLayout(4, GL_FLOAT, GL_FALSE, 16 * sizeof(float)));
}

size_t VertexAttributeMat4::size()
{
    TRACE();
    return (16 * sizeof(float));
}

}
