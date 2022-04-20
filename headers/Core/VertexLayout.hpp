#ifndef VERTEXLAYOUT_HPP
# define VERTEXLAYOUT_HPP

# include "pch.hpp"

namespace NAMESPACE
{

struct VertexLayout
{
GLuint  _count;
GLuint  _type;
GLubyte _normalized;
GLuint  _stride;
public:
    VertexLayout() = default;
    VertexLayout(GLuint count, GLuint type, GLubyte normalized, GLuint stride);

    inline GLuint getStride() const { return (_stride); }
};

}

#endif
