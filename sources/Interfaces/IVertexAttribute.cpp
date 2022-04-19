#include "Interfaces/IVertexAttribute.hpp"

namespace NAMESPACE
{

void IVertexAttribute::push(VertexLayout &layout)
{
    (void)layout;
    ASSERT(false);
}

size_t IVertexAttribute::getSize()
{
    ASSERT(false);
    return (0);
}

}
