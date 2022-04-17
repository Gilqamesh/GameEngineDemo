#ifndef VERTEXARRAY_HPP
# define VERTEXARRAY_HPP

# include "pch.hpp"
# include "Core/VertexBuffer.hpp"
# include "Core/VertexLayout.hpp"
# include "IndexBuffer.hpp"

namespace NAMESPACE
{

class VertexArray
{
GLuint GL_ID;
public:
    VertexArray();
    ~VertexArray();

    // to avoid destruction of OpenGL context
    VertexArray(const VertexArray &other) = delete;
    VertexArray &operator=(const VertexArray &other) = delete;

    VertexArray(VertexArray &&other);
    VertexArray &operator=(VertexArray &&other);

    void configure(const VertexBuffer &vb, const VertexLayout &layout, const IndexBuffer &ib) const;

    void bind() const;
    void unbind() const;
};

}

#endif
