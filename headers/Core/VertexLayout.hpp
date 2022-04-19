#ifndef VERTEXLAYOUT_HPP
# define VERTEXLAYOUT_HPP

# include "pch.hpp"

namespace NAMESPACE
{

struct VertexAttribute
{
    GLuint  _type;
    GLuint  _count;
    GLubyte _normalized;
    GLuint  _offset;
    GLuint  _index;

    static GLuint getSizeOfType(GLuint type)
    {
        switch (type)
        {
            case GL_FLOAT: return (4);
            case GL_UNSIGNED_INT: return (4);
            case GL_UNSIGNED_BYTE: return (1);
        }
        ASSERT(false);
        return (0);
    }
};

class VertexLayout : public std::vector<VertexAttribute>
{
GLuint _stride; // Size of a Vertex in bytes
public:
    VertexLayout();

    template <typename T>
    void push(GLuint count)
    {
        (void)count;
        ASSERT(false);
    }

    template <>
    void push<GLfloat>(GLuint count)
    {
        push_back({ GL_FLOAT, count, GL_FALSE, _stride, (GLuint)size()});
        _stride += count * VertexAttribute::getSizeOfType(GL_FLOAT);
    }

    template <>
    void push<GLuint>(GLuint count)
    {
        push_back({ GL_UNSIGNED_INT, count, GL_FALSE, _stride, (GLuint)size()});
        _stride += count * VertexAttribute::getSizeOfType(GL_UNSIGNED_INT);
    }

    template <>
    void push<GLubyte>(GLuint count)
    {
        push_back({ GL_UNSIGNED_BYTE, count, GL_TRUE, _stride, (GLuint)size()});
        _stride += count * VertexAttribute::getSizeOfType(GL_UNSIGNED_BYTE);
    }

    inline GLuint getStride() const { return (_stride); }
};

}

#endif
