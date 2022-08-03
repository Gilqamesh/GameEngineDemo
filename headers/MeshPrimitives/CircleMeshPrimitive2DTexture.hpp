#ifndef CIRCLEMESHFACTORY2DTEXTURE_HPP
# define CIRCLEMESHFACTORY2DTEXTURE_HPP

# include "Interfaces/IMeshPrimitive.hpp"

namespace GilqEngine
{

class CircleMeshPrimitive2DTexture : public IMeshPrimitive
{
public:
    virtual Mesh createMesh() override;
};

}

#endif
