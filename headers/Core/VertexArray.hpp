#ifndef VERTEXARRAY_HPP
# define VERTEXARRAY_HPP

# include "pch.hpp"
# include "Core/VertexBuffer.hpp"
# include "Core/VertexLayout.hpp"

namespace NAMESPACE
{

class VertexArray
{
GLuint GL_ID;
public:
    VertexArray();
    ~VertexArray();

    void configure(const VertexBuffer &vb, const VertexLayout &layout) const;

    void bind() const;
    void unbind() const;
};

}

#endif