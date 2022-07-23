#ifndef QUADMESHFACTORY2DTEXTURE_HPP
# define QUADMESHFACTORY2DTEXTURE_HPP

# include "Interfaces/IMeshFactory.hpp"

namespace GilqEngine
{

class QuadMeshFactory2DTexture : public IMeshFactory
{
public:
    virtual Mesh createMesh() override;
};

}

#endif
