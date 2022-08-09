#ifndef IVERTEXATTRIBUTE_HPP
# define IVERTEXATTRIBUTE_HPP

# include "Core/VertexLayout.hpp"

namespace GilqEngine
{

/**
 * This class can't have vtable as it ruins the data layout otherwise
 * Maybe think about a solution that can have dispatching.
 */
class IVertexAttribute
{
public:
    /**
     * Returns the size of the vertex attribute in bytes.
     */
    size_t size();

    /**
     * Returns the layout needed for 'glVertexAttribPointer'
     */
    static VertexLayout layout();
};

}

#endif
