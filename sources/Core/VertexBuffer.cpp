#include "Core/VertexBuffer.hpp"
#include "Debug/Trace.hpp"

namespace NAMESPACE
{

VertexBuffer::VertexBuffer(const void *data, GLuint size)
{
    TRACE();
    GLCall(glGenBuffers(1, &GL_ID));
    bind();
    GLCall(glBufferData(GL_ARRAY_BUFFER, size, data, GL_STATIC_DRAW));
    unbind();
}

VertexBuffer::VertexBuffer(GLuint size)
{
    TRACE();
    GLCall(glGenBuffers(1, &GL_ID));
    bind();
    GLCall(glBufferData(GL_ARRAY_BUFFER, size, nullptr, GL_DYNAMIC_DRAW));
    unbind();
}

VertexBuffer::~VertexBuffer()
{
    TRACE();
    GLCall(glDeleteBuffers(1, &GL_ID));
}

VertexBuffer::VertexBuffer(VertexBuffer &&other)
    : GL_ID(other.GL_ID)
{
    other.GL_ID = 0;
}

VertexBuffer &VertexBuffer::operator=(VertexBuffer &&other)
{
    if (this != &other)
    {
        GL_ID = other.GL_ID;
        other.GL_ID = 0;
    }
    return (*this);
}

void VertexBuffer::bind() const
{
    TRACE();
    GLCall(glBindBuffer(GL_ARRAY_BUFFER, GL_ID));
}

void VertexBuffer::unbind() const
{
    TRACE();
    GLCall(glBindBuffer(GL_ARRAY_BUFFER, 0));
}

}
