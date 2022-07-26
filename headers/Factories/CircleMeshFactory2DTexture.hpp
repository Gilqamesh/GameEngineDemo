#ifndef CIRCLEMESHFACTORY2DTEXTURE_HPP
# define CIRCLEMESHFACTORY2DTEXTURE_HPP

# include "Interfaces/IMeshFactory.hpp"

namespace GilqEngine
{

class CircleMeshFactory2DTexture : public IMeshFactory
{
public:
    virtual Mesh createMesh() override;
};

}

#endif
