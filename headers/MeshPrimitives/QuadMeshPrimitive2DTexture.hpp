#ifndef QUADMESHFACTORY2DTEXTURE_HPP
# define QUADMESHFACTORY2DTEXTURE_HPP

# include "Interfaces/IMeshPrimitive.hpp"

namespace GilqEngine
{

class QuadMeshPrimitive2DTexture : public IMeshPrimitive
{
public:
    virtual Mesh createMesh() override;
};

}

#endif
