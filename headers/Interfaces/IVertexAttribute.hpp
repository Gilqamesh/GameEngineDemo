#ifndef IVERTEXATTRIBUTE_HPP
# define IVERTEXATTRIBUTE_HPP

# include "Core/VertexLayout.hpp"

namespace NAMESPACE
{

class IVertexAttribute
{
public:
    void push(VertexLayout &layout);
    size_t getSize();
};

}

#endif
