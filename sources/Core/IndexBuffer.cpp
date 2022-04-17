#include "Core/IndexBuffer.hpp"
#include "Debug/Trace.hpp"

namespace NAMESPACE
{

IndexBuffer::IndexBuffer(const void *data, GLuint count)
    : _count(count)
{
    TRACE();
    GLCall(glGenBuffers(1, &GL_ID));
    bind();
    GLCall(glBufferData(GL_ELEMENT_ARRAY_BUFFER, _count * sizeof(GLuint), data, GL_STATIC_DRAW));
    unbind();
}

IndexBuffer::~IndexBuffer()
{
    TRACE();
    GLCall(glDeleteBuffers(1, &GL_ID));
}

IndexBuffer::IndexBuffer(IndexBuffer &&other)
    : GL_ID(other.GL_ID), _count(other._count)
{
    other.GL_ID = 0;
}

IndexBuffer &IndexBuffer::operator=(IndexBuffer &&other)
{
    if (this != &other)
    {
        GL_ID = other.GL_ID;
        _count = other._count;
        other.GL_ID = 0;
    }
    return (*this);
}

void IndexBuffer::bind() const
{
    TRACE();
    GLCall(glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, GL_ID));
}

void IndexBuffer::unbind() const
{
    TRACE();
    GLCall(glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0));
}


}
