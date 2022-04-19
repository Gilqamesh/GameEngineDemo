#ifndef IVERTEXATTRIBUTE_HPP
# define IVERTEXATTRIBUTE_HPP

# include "Core/VertexLayout.hpp"

namespace NAMESPACE
{

class IVertexAttribute
{
public:
    virtual ~IVertexAttribute() = default;
    virtual void push(VertexLayout &layout) = 0;
};

}

#endif
