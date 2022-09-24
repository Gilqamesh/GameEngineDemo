#ifndef VERTEXARRAY_HPP
#define VERTEXARRAY_HPP

#include "pch.hpp"
#include "Core/VertexBuffer.hpp"
#include "Core/VertexLayout.hpp"
#include "Core/IndexBuffer.hpp"

namespace GilqEngine
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

        /*
         * Only call this once
         */
        void create();

        /*
         * Caller's responsibility:
         *      - prior to calling this function, bind() this object
         *      - prior to calling this function, bind() the specific Buffer Object
         */
        void pushVertexAttribute(const VertexLayout &layout, GLuint index, u64 offset);

        void bind();
        void unbind();
    };

}

#endif
