#ifndef INDEXBUFFER_HPP
# define INDEXBUFFER_HPP

# include "pch.hpp"

namespace NAMESPACE
{
class IndexBuffer
{
GLuint GL_ID;
GLuint _count;
public:
    IndexBuffer(const void *data, GLuint count);
    ~IndexBuffer();

    // to avoid destruction of OpenGL context
    IndexBuffer(const IndexBuffer &other) = delete;
    IndexBuffer &operator=(const IndexBuffer &other) = delete;

    IndexBuffer(IndexBuffer &&other);
    IndexBuffer &operator=(IndexBuffer &&other);

    void bind() const;
    void unbind() const;

    inline GLuint getCount() const { return (_count); }
};

}

#endif
