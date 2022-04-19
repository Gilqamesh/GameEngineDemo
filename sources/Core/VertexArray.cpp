#include "Core/VertexArray.hpp"
#include "Debug/Trace.hpp"

namespace NAMESPACE
{

VertexArray::VertexArray()
    : GL_ID(0)
{
    TRACE();
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

void VertexArray::create()
{
    TRACE();
    ASSERT(GL_ID == 0);
    GLCall(glGenVertexArrays(1, &GL_ID));
}

void VertexArray::pushVertexAttribute(const VertexAttribute &attribute, GLuint stride)
{
    TRACE();
    GLCall(glEnableVertexAttribArray(attribute._index));
    GLCall(glVertexAttribPointer(
        attribute._index,
        attribute._count,
        attribute._type,
        attribute._normalized,
        stride,
        (const void *)&attribute._offset));
}

void VertexArray::bind()
{
    TRACE();
    GLCall(glBindVertexArray(GL_ID));
}

void VertexArray::unbind()
{
    TRACE();
    GLCall(glBindVertexArray(0));
}

}
