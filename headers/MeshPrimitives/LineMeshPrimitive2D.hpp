#ifndef LINEMESHFACTORY2D_HPP
# define LINEMESHFACTORY2D_HPP

# include "Interfaces/IMeshPrimitive.hpp"

namespace GilqEngine
{

class LineMeshPrimitive2D : public IMeshPrimitive
{
public:
    virtual Mesh createMesh() override;
};

}

#endif
