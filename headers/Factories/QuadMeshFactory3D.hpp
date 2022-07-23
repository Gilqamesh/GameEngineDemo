#ifndef QUADMESHFACTORY3D_HPP
# define QUADMESHFACTORY3D_HPP

# include "Interfaces/IMeshFactory.hpp"

namespace GilqEngine
{

class QuadMeshFactory3D : public IMeshFactory
{
public:
    virtual Mesh createMesh() override;
};

}

#endif
