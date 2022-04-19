#ifndef VERTEXBUFFER_HPP
# define VERTEXBUFFER_HPP

# include "pch.hpp"

namespace NAMESPACE
{

class VertexBuffer
{
GLuint      GL_ID;

// debug only
void        *_data;
size_t      _max_size;
size_t      _size;
public:
    VertexBuffer();
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

    /*
     * Caller responsibility:
     *      - VBO has to be dynamically initialized
     *      - call bind() before calling 'update'
     */
    void update(const void *data, GLuint size);

    inline GLsizeiptr getSize() { return (_size); }
    inline const void *getData() { return (_data); }

    void bind();
    void unbind();
};

}

#endif
