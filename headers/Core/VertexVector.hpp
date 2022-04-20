#ifndef VERTEXVECTOR_HPP
# define VERTEXVECTOR_HPP

# include "Interfaces/IVertexAttribute.hpp"
# include "Core/VertexLayout.hpp"

namespace NAMESPACE
{

template <class VertexAttribute>
class VertexVector
{
std::vector<VertexAttribute>    _vertexAttributes;
VertexLayout                    _layout;
public:
    VertexVector() : _layout(VertexAttribute::getLayout()) { }
    inline void push_back(const VertexAttribute &vertexAttribute) { _vertexAttributes.push_back(vertexAttribute); }
    inline const VertexLayout &getLayout() const { return (_layout); }
    inline const void *getData() const { return (_vertexAttributes.data()); }
    inline GLsizeiptr getSize() const { return (_vertexAttributes.size() * sizeof(VertexAttribute)); }
};

}

#endif
