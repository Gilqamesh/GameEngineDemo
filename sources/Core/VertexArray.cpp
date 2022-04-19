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
    ASSERT(GL_ID == 0);
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
    LOG("attribute._index: " << attribute._index);
    LOG("attribute._count: " << attribute._count);
    LOG("attribute._type: " << attribute._type);
    printf("attribute._normalized: %d\n", attribute._normalized);
    LOG("stride: " << stride);
    LOG("attribute._offset " << attribute._offset);
    GLCall(glVertexAttribPointer(
        attribute._index,
        attribute._count,
        attribute._type,
        attribute._normalized,
        // 0,
        stride,
        0
        // (const void *)&attribute._offset
        ));
}

void VertexArray::bind()
{
    TRACE();
    ASSERT(GL_ID);
    GLCall(glBindVertexArray(GL_ID));
}

void VertexArray::unbind()
{
    TRACE();
    GLCall(glBindVertexArray(0));
}

}
