#ifndef IVERTEXATTRIBUTE_HPP
# define IVERTEXATTRIBUTE_HPP

# include "Core/VertexLayout.hpp"

namespace GilqEngine
{

class IVertexAttribute
{
public:
    size_t getSize();
    static VertexLayout getLayout();
};

}

#endif
