#include "VertexAttributes/VertexAttributeFloat4.hpp"

namespace GilqEngine
{

VertexAttributeFloat4::VertexAttributeFloat4()
{
    TRACE();
}

VertexAttributeFloat4::VertexAttributeFloat4(float a, float b, float c, float d)
    : _value(a, b, c, d)
{
    TRACE();
}

VertexAttributeFloat4::VertexAttributeFloat4(const Vector<float, 4> &value)
    : _value(value)
{
    TRACE();
}

VertexLayout VertexAttributeFloat4::layout()
{
    TRACE();
    return (VertexLayout(4, GL_FLOAT, GL_FALSE, 4 * sizeof(float)));
}

size_t VertexAttributeFloat4::size()
{
    TRACE();
    return (4 * sizeof(float));
}

}
