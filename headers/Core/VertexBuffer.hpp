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

    void bind() const;
    void unbind() const;
};

}

#endif
