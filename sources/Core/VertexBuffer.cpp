#include "Core/VertexBuffer.hpp"
#include "Debug/Trace.hpp"

namespace NAMESPACE
{

VertexBuffer::VertexBuffer(const void *data, GLuint size)
{
    TRACE();
    GLCall(glGenBuffers(1, &GL_ID));
    GLCall(glBindBuffer(GL_ARRAY_BUFFER, GL_ID));
    GLCall(glBufferData(GL_ARRAY_BUFFER, size, data, GL_STATIC_DRAW));
}

VertexBuffer::VertexBuffer(GLuint size)
{
    TRACE();
    GLCall(glGenBuffers(1, &GL_ID));
    GLCall(glBindBuffer(GL_ARRAY_BUFFER, GL_ID));
    GLCall(glBufferData(GL_ARRAY_BUFFER, size, nullptr, GL_DYNAMIC_DRAW));
}

VertexBuffer::~VertexBuffer()
{
    TRACE();
    GLCall(glDeleteBuffers(1, &GL_ID));
}

void VertexBuffer::bind()
{
    TRACE();
    GLCall(glBindBuffer(GL_ARRAY_BUFFER, GL_ID));
}

void VertexBuffer::unbind()
{
    TRACE();
    GLCall(glBindBuffer(GL_ARRAY_BUFFER, 0));
}


}
