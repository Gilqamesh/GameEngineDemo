#ifndef INDEXBUFFER_HPP
# define INDEXBUFFER_HPP

# include "pch.hpp"

namespace NAMESPACE
{
    
class IndexBuffer
{
GLuint  GL_ID;

// debug only
void    *_data;
size_t  _max_count;
size_t  _count;
public:
    IndexBuffer();
    /*
     * Static version
     * Cannot be modified
     */
    IndexBuffer(const void *data, GLuint count);
    /*
     * Dynamic version
     * Initialize it later and possibly multiple times
     */
    IndexBuffer(GLuint count);
    ~IndexBuffer();

    // to avoid destruction of OpenGL context
    IndexBuffer(const IndexBuffer &other) = delete;
    IndexBuffer &operator=(const IndexBuffer &other) = delete;

    IndexBuffer(IndexBuffer &&other);
    IndexBuffer &operator=(IndexBuffer &&other);

    /*
     * Caller responsibility:
     *      - IBO has to be dynamically initialized
     *      - call bind() before calling 'update'
     */
    void update(const void *data, GLuint count);

    void bind();
    void unbind();

    inline GLuint getCount() const { return (_count); }
    inline const void *getData() { return (_data); }
};

}

#endif
