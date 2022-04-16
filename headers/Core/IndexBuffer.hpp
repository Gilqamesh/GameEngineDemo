#ifndef INDEXBUFFER_HPP
# define INDEXBUFFER_HPP

# include "pch.hpp"

namespace NAMESPACE
{
GLuint GL_ID;
GLuint _count;
class IndexBuffer
{
public:
    IndexBuffer(const void *data, GLuint count);
    ~IndexBuffer();

    void bind();
    void unbind();

    inline GLuint getCount() const { return (_count); }
};

}

#endif
