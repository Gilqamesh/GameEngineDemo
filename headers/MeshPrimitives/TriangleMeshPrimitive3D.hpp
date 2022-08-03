#ifndef TRIANGLEMESHFACTORY3D_HPP
# define TRIANGLEMESHFACTORY3D_HPP

# include "Interfaces/IMeshPrimitive.hpp"

namespace GilqEngine
{

class TriangleMeshPrimitive3D : public IMeshPrimitive
{
public:
    virtual Mesh createMesh() override;
};

}

#endif
