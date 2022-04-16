#include "Core/IndexBuffer.hpp"
#include "Debug/Trace.hpp"

namespace NAMESPACE
{

IndexBuffer::IndexBuffer(const void *data, GLuint count)
    : _count(count)
{
    TRACE();
    GLCall(glGenBuffers(1, &GL_ID));
    GLCall(glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, GL_ID));
    GLCall(glBufferData(GL_ELEMENT_ARRAY_BUFFER, _count * sizeof(GLuint), data, GL_STATIC_DRAW))
}

IndexBuffer::~IndexBuffer()
{
    TRACE();
    GLCall(glDeleteBuffers(1, &GL_ID));
}

void IndexBuffer::bind()
{
    TRACE();
    GLCall(glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, GL_ID));
}

void IndexBuffer::unbind()
{
    TRACE();
    GLCall(glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0));
}


}
