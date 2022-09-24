#ifndef VERTEXVECTOR_HPP
# define VERTEXVECTOR_HPP

# include "Interfaces/IVertexAttribute.hpp"
# include "Core/VertexLayout.hpp"

namespace GilqEngine
{

template <class VertexAttribute>
class VertexVector
{
vector<VertexAttribute> _vertexAttributes;
VertexLayout            _layout;
public:
    VertexVector() : _layout(VertexAttribute::layout()) { }

    template <typename InputIt>
    VertexVector(InputIt first, InputIt last)
        : _vertexAttributes(first, last),
          _layout(VertexAttribute::layout())
    {
    }

    /**
     * Adds a vertex attribute to the end of the array.
     */
    inline void push_back(const VertexAttribute &vertexAttribute) { _vertexAttributes.push_back(vertexAttribute); }

    template <typename InputIt>
    void assign(InputIt first, InputIt last)
    {
        for (; first != last; ++first)
        {
            _vertexAttributes.push_back(*first);
        }
    }

    /**
     * Returns the vertex layout needed for 'glVertexAttribPointer'
     */
    inline const VertexLayout &layout() const { return (_layout); }

    /**
     * Returns the raw data to the array of vertex attributes.
     */
    inline const void *data() const { return (_vertexAttributes.data()); }

    /**
     * Returns the array of vertex attributes size in bytes.
     */
    inline u32 size() const { return ((u32)(_vertexAttributes.size() * sizeof(VertexAttribute))); }

    /**
     * Clears the data.
     */
    inline void clear() { _vertexAttributes.clear(); }
};

}

#endif
