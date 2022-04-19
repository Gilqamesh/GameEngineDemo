#include "Core/VertexBuffer.hpp"
#include "Debug/Trace.hpp"

namespace NAMESPACE
{

VertexBuffer::VertexBuffer()
    : GL_ID(0), _data(nullptr), _max_size(0), _size(0)
{
    TRACE();
}

VertexBuffer::VertexBuffer(const void *data, GLuint size)
    : _data(std::malloc(size)), _max_size(size), _size(size)
{
    TRACE();
    memcpy(_data, data, _size);
    GLCall(glGenBuffers(1, &GL_ID));
    bind();
    GLCall(glBufferData(GL_ARRAY_BUFFER, _size, _data, GL_STATIC_DRAW));
    unbind();
}

VertexBuffer::VertexBuffer(GLuint size)
    : _data(std::malloc(size)), _max_size(size), _size(size)
{
    TRACE();
    GLCall(glGenBuffers(1, &GL_ID));
    bind();
    GLCall(glBufferData(GL_ARRAY_BUFFER, _size, nullptr, GL_DYNAMIC_DRAW));
    unbind();
}

VertexBuffer::~VertexBuffer()
{
    TRACE();
    ASSERT(_data == nullptr);
    GLCall(glDeleteBuffers(1, &GL_ID));
}

VertexBuffer::VertexBuffer(VertexBuffer &&other)
    : GL_ID(other.GL_ID), _max_size(other._max_size), _size(other._size)
{
    other.GL_ID = 0;
    if (_data) { free(_data); _data = nullptr; }
    std::swap(_data, other._data);
    other._max_size = 0;
    other._size = 0;
}

VertexBuffer &VertexBuffer::operator=(VertexBuffer &&other)
{
    if (this != &other)
    {
        GL_ID = other.GL_ID;
        _max_size = other._max_size;
        _size = other._size;
        if (_data) { free(_data); _data = nullptr; }
        std::swap(_data, other._data);
        other.GL_ID = 0;
        other._max_size = 0;
        other._size = 0;
    }
    return (*this);
}

void VertexBuffer::update(const void *data, GLuint size)
{
    TRACE();
    _size = size;
    ASSERT(_size <= _max_size);
    if (_data) { free(_data); _data = nullptr; }
    memcpy(_data, data, size);
    GLCall(glBufferData(GL_ARRAY_BUFFER, _size, _data, GL_DYNAMIC_DRAW));
}

void VertexBuffer::bind()
{
    TRACE();
    ASSERT(GL_ID);
    GLCall(glBindBuffer(GL_ARRAY_BUFFER, GL_ID));
}

void VertexBuffer::unbind()
{
    TRACE();
    GLCall(glBindBuffer(GL_ARRAY_BUFFER, 0));
}

}
