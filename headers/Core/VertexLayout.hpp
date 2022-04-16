#ifndef VERTEXLAYOUT_HPP
# define VERTEXLAYOUT_HPP

# include "pch.hpp"

namespace NAMESPACE
{

struct VertexElement
{
    GLuint  _type;
    GLuint  _count;
    GLubyte _normalized;

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

class VertexLayout
{
std::vector<VertexElement>  elements;
GLuint                      stride;
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
        elements.push_back({ GL_FLOAT, count, GL_FALSE });
        stride += count * VertexElement::getSizeOfType(GL_FLOAT);
    }

    template <>
    void push<GLuint>(GLuint count)
    {
        elements.push_back({ GL_UNSIGNED_INT, count, GL_FALSE });
        stride += count * VertexElement::getSizeOfType(GL_UNSIGNED_INT);
    }

    template <>
    void push<GLubyte>(GLuint count)
    {
        elements.push_back({ GL_UNSIGNED_BYTE, count, GL_TRUE });
        stride += count * VertexElement::getSizeOfType(GL_UNSIGNED_BYTE);
    }

    inline const std::vector<VertexElement> &getElements() const { return (elements); }
    inline GLuint getStride() const { return (stride); }
};

}

#endif
