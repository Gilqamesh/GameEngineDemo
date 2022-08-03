#ifndef QUADMESHFACTORY3D_HPP
# define QUADMESHFACTORY3D_HPP

# include "Interfaces/IMeshPrimitive.hpp"

namespace GilqEngine
{

class QuadMeshPrimitive3D : public IMeshPrimitive
{
public:
    virtual Mesh createMesh() override;
};

}

#endif
