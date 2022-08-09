#ifndef PARTICLEQUADMESHPRIMITIVE2DTEXTURE_HPP
# define PARTICLEQUADMESHPRIMITIVE2DTEXTURE_HPP

# include "Interfaces/IMeshPrimitive.hpp"

namespace GilqEngine
{

class ParticleQuadMeshPrimitive2DTexture : public IMeshPrimitive
{
public:
    virtual Mesh createMesh() override;
};

}

#endif
