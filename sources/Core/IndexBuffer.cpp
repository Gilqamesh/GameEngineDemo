#include "Core/IndexBuffer.hpp"
#include "Debug/Trace.hpp"

namespace NAMESPACE
{

IndexBuffer::IndexBuffer()
    : GL_ID(0), _data(nullptr), _max_count(0), _count(0)
{

}

IndexBuffer::IndexBuffer(const void *data, GLuint count)
    : _data(std::malloc(count)), _max_count(count), _count(count)
{
    TRACE();
    memcpy(_data, data, _count * sizeof(GLuint));
    GLCall(glGenBuffers(1, &GL_ID));
    bind();
    GLCall(glBufferData(GL_ELEMENT_ARRAY_BUFFER, _count * sizeof(GLuint), _data, GL_STATIC_DRAW));
    unbind();
}

IndexBuffer::IndexBuffer(GLuint count)
    : _data(std::malloc(count)), _max_count(count), _count(count)
{
    TRACE();
    GLCall(glGenBuffers(1, &GL_ID));
    bind();
    GLCall(glBufferData(GL_ELEMENT_ARRAY_BUFFER, _count * sizeof(GLuint), nullptr, GL_DYNAMIC_DRAW));
    unbind();
}

IndexBuffer::~IndexBuffer()
{
    TRACE();
    ASSERT(_data == nullptr);
    GLCall(glDeleteBuffers(1, &GL_ID));
}

IndexBuffer::IndexBuffer(IndexBuffer &&other)
    : GL_ID(other.GL_ID), _max_count(other._max_count), _count(other._count)
{
    if (_data) { free(_data); _data = nullptr; }
    std::swap(_data, other._data);
    other.GL_ID = 0;
    other._count = 0;
    other._max_count = 0;
}

IndexBuffer &IndexBuffer::operator=(IndexBuffer &&other)
{
    if (this != &other)
    {
        GL_ID = other.GL_ID;
        if (_data) { free(_data); _data = nullptr; }
        std::swap(_data, other._data);
        _max_count = other._max_count;
        _count = other._count;
        other.GL_ID = 0;
        other._max_count = 0;
        other._count = 0;
    }
    return (*this);
}

void IndexBuffer::update(const void *data, GLuint count)
{
    TRACE();
    _count = count;
    ASSERT(_count <= _max_count);
    memcpy(_data, data, _count);
    GLCall(glBufferData(GL_ELEMENT_ARRAY_BUFFER, _count * sizeof(GLuint), _data, GL_DYNAMIC_DRAW));
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


}
