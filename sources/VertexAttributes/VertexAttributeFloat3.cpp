#include "VertexAttributes/VertexAttributeFloat3.hpp"

namespace GilqEngine
{

VertexAttributeFloat3::VertexAttributeFloat3()
{
    TRACE();
}

VertexAttributeFloat3::VertexAttributeFloat3(float a, float b, float c)
    : _value(a, b, c)
{
    TRACE();
}

VertexAttributeFloat3::VertexAttributeFloat3(const Vector<float, 3> &value)
    : _value(value)
{
    TRACE();
}

VertexLayout VertexAttributeFloat3::layout()
{
    TRACE();
    return (VertexLayout(3, GL_FLOAT, GL_FALSE, 3 * sizeof(float)));
}

size_t VertexAttributeFloat3::size()
{
    TRACE();
    return (3 * sizeof(float));
}

}
