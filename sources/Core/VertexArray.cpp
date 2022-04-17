#include "Core/VertexArray.hpp"
#include "Debug/Trace.hpp"

namespace NAMESPACE
{

VertexArray::VertexArray()
{
    TRACE();
    GLCall(glGenVertexArrays(1, &GL_ID));
}

VertexArray::~VertexArray()
{
    TRACE();
    GLCall(glDeleteVertexArrays(1, &GL_ID));
}

VertexArray::VertexArray(VertexArray &&other)
    : GL_ID(other.GL_ID)
{
    other.GL_ID = 0;
}

VertexArray &VertexArray::operator=(VertexArray &&other)
{
    if (this != &other)
    {
        GL_ID = other.GL_ID;
        other.GL_ID = 0;
    }
    return (*this);
}

void VertexArray::configure(const VertexBuffer &vb, const VertexLayout &layout, const IndexBuffer &ib) const
{
    TRACE();
    bind();
    vb.bind();
    ib.bind();
    const auto &elements = layout.getElements();

    for (unsigned int i = 0, offset = 0; i < elements.size(); ++i)
    {
        const auto &element = elements[i];
        GLCall(glEnableVertexAttribArray(i));
        GLCall(glVertexAttribPointer(i, element._count, element._type, element._normalized,
            layout.getStride(), (const void *)&offset));
        offset += element._count * VertexElement::getSizeOfType(element._type);
    }
    unbind();
    vb.unbind();
    ib.unbind();
}

void VertexArray::bind() const
{
    TRACE();
    GLCall(glBindVertexArray(GL_ID));
}

void VertexArray::unbind() const
{
    TRACE();
    GLCall(glBindVertexArray(0));
}

}
