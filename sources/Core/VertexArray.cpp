#include "Core/VertexArray.hpp"
#include "Debug/Trace.hpp"
#include "Log.hpp"

namespace GilqEngine
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

void VertexArray::pushVertexAttribute(const VertexLayout &layout, GLuint index)
{
    TRACE();
    GLCall(glEnableVertexAttribArray(index));
    GLCall(glVertexAttribPointer(index, layout._count, layout._type, layout._normalized, layout._stride, 0));
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
