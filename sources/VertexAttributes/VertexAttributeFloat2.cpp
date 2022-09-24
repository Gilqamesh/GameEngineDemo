#include "VertexAttributes/VertexAttributeFloat2.hpp"

namespace GilqEngine
{

VertexAttributeFloat2::VertexAttributeFloat2()
{
    TRACE();
}

VertexAttributeFloat2::VertexAttributeFloat2(float a, float b)
    : _value(a, b)
{
    TRACE();
}

VertexAttributeFloat2::VertexAttributeFloat2(const Vector<float, 2> &value)
    : _value(value)
{
    TRACE();
}

VertexLayout VertexAttributeFloat2::layout()
{
    TRACE();
    return (VertexLayout(2, GL_FLOAT, GL_FALSE, 2 * sizeof(float)));
}

size_t VertexAttributeFloat2::size()
{
    TRACE();
    return (2 * sizeof(float));
}

}
