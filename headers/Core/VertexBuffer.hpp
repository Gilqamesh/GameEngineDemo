#ifndef VERTEXBUFFER_HPP
# define VERTEXBUFFER_HPP

# include "pch.hpp"

namespace NAMESPACE
{

class VertexBuffer
{
GLuint GL_ID;
public:
    /*
     * Static version
     * Cannot be modified
     */
    VertexBuffer(const void *data, GLuint size);
    /*
     * Dynamic version
     * Initialize it later and possibly multiple times
     */
    VertexBuffer(GLuint size);
    ~VertexBuffer();

    // to avoid destruction of OpenGL context
    VertexBuffer(const VertexBuffer &other) = delete;
    VertexBuffer &operator=(const VertexBuffer &other) = delete;

    VertexBuffer(VertexBuffer &&other);
    VertexBuffer &operator=(VertexBuffer &&other);

    void bind() const;
    void unbind() const;
};

}

#endif
