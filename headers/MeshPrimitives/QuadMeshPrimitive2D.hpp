#ifndef QUADMESHFACTORY2D_HPP
# define QUADMESHFACTORY2D_HPP

# include "Interfaces/IMeshPrimitive.hpp"

namespace GilqEngine
{

class QuadMeshPrimitive2D : public IMeshPrimitive
{
public:
    virtual Mesh createMesh() override;
};

}

#endif
