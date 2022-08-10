#ifndef PARTICLEQUADMESHPRIMITIVE2D_HPP
# define PARTICLEQUADMESHPRIMITIVE2D_HPP

# include "Interfaces/IMeshPrimitive.hpp"

namespace GilqEngine
{

class ParticleQuadMeshPrimitive2D : public IMeshPrimitive
{
public:
    virtual Mesh createMesh() override;
};

}

#endif
