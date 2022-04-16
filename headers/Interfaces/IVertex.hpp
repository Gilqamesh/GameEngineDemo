#ifndef IVERTEX_HPP
# define IVERTEX_HPP

# include "pch.hpp"
# include "Core/VertexLayout.hpp"

namespace NAMESPACE
{

class IVertex
{
VertexLayout layout;
public:
    template <typename T>
    void push(GLuint count)
    {
        layout.push<T>(count);
    }

    inline const VertexLayout &getLayout() const { return (layout); }
    inline const std::vector<VertexElement> &getElements() const { return (layout.getElements()); }
    inline GLuint getStride() const { return (layout.getStride()); }
};

}

#endif
