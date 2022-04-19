#ifndef VERTEXVECTOR_HPP
# define VERTEXVECTOR_HPP

# include "Interfaces/IVertexAttribute.hpp"

namespace NAMESPACE
{

template <class VertexAttribute>
class VertexVector : public std::vector<VertexAttribute>
{
public:
    inline const void *getData() { return (this->data()); }
    inline GLsizeiptr getSize() {
        ASSERT(this->size());
        return (this->size() * sizeof(this->operator[](0)));
    }
};

}

#endif
