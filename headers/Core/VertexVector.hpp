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
    VertexVector() : _layout(VertexAttribute::getLayout()) { }
    inline void push_back(const VertexAttribute &vertexAttribute) { _vertexAttributes.push_back(vertexAttribute); }
    inline const VertexLayout &getLayout() const { return (_layout); }
    inline const void *getData() const { return (_vertexAttributes.data()); }
    inline GLuint getSize() const { return ((GLuint)(_vertexAttributes.size() * sizeof(VertexAttribute))); }
    inline const vector<VertexAttribute> &getVertexAttributes() const { return (_vertexAttributes); }
    inline void clear() { _vertexAttributes.clear(); }
};

}

#endif
