#ifndef INDEXBUFFER_HPP
#define INDEXBUFFER_HPP

#include "pch.hpp"

namespace GilqEngine
{

    class IndexBuffer
    {
        u32 GL_ID;
        u32 _count;

    public:
        IndexBuffer();
        /*
         * Static version
         * Cannot be modified
         */
        IndexBuffer(const void *data, u32 count);
        /*
         * Dynamic version
         * Initialize it later and possibly multiple times
         */
        IndexBuffer(u32 count);
        ~IndexBuffer();

        // to avoid destruction of OpenGL context
        IndexBuffer(const IndexBuffer &other) = delete;
        IndexBuffer &operator=(const IndexBuffer &other) = delete;

        IndexBuffer(IndexBuffer &&other);
        IndexBuffer &operator=(IndexBuffer &&other);

        inline u32 getID() const { return (GL_ID); }

        /*
         * Caller responsibility:
         *      - IBO has to be dynamically initialized
         *      - call bind() before calling 'update'
         */
        void update(const void *data, u32 count);

        /*
         * Delete IndexBuffer from the OpenGL context
         * Reset the object's state
         */
        void release();

        void bind();
        void unbind();

        inline u32 getCount() const { return (_count); }
    };

}

#endif
