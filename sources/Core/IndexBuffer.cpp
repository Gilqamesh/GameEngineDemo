#include "Core/IndexBuffer.hpp"
#include "Debug/Trace.hpp"

namespace GilqEngine
{

IndexBuffer::IndexBuffer()
    : GL_ID(0), _count(0)
{
    TRACE();
}

IndexBuffer::IndexBuffer(const void *data, uint32 count)
    : _count(count)
{
    TRACE();
    GLCall(glGenBuffers(1, &GL_ID));
    bind();
    GLCall(glBufferData(GL_ELEMENT_ARRAY_BUFFER, _count * sizeof(uint32), data, GL_STATIC_DRAW));
    unbind();
}

IndexBuffer::IndexBuffer(uint32 count)
    : _count(count)
{
    TRACE();
    GLCall(glGenBuffers(1, &GL_ID));
    bind();
    GLCall(glBufferData(GL_ELEMENT_ARRAY_BUFFER, _count * sizeof(uint32), nullptr, GL_DYNAMIC_DRAW));
    unbind();
}

IndexBuffer::~IndexBuffer()
{
    TRACE();
    GLCall(glDeleteBuffers(1, &GL_ID));
}

IndexBuffer::IndexBuffer(IndexBuffer &&other)
    : GL_ID(other.GL_ID)
{
    TRACE();
    other.GL_ID = 0;
    _count = other._count;
    other._count = 0;
}

IndexBuffer &IndexBuffer::operator=(IndexBuffer &&other)
{
    TRACE();
    if (this != &other)
    {
        GL_ID = other.GL_ID;
        other.GL_ID = 0;
        _count = other._count;
        other._count = 0;
    }
    return (*this);
}

void IndexBuffer::update(const void *data, uint32 count)
{
    TRACE();
    _count = count;
    GLCall(glBufferData(GL_ELEMENT_ARRAY_BUFFER, _count * sizeof(uint32), data, GL_DYNAMIC_DRAW));
}

void IndexBuffer::bind()
{
    TRACE();
    ASSERT(GL_ID);
    GLCall(glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, GL_ID));
}

void IndexBuffer::unbind()
{
    TRACE();
    GLCall(glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0));
}

void IndexBuffer::release()
{
    TRACE();
    GLCall(glDeleteBuffers(1, &GL_ID));
    GL_ID = 0;
    _count = 0;
}

}
