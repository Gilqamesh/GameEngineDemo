#ifndef TRIANGLEMESHFACTORY3D_HPP
# define TRIANGLEMESHFACTORY3D_HPP

# include "Interfaces/IMeshFactory.hpp"

namespace GilqEngine
{

class TriangleMeshFactory3D : public IMeshFactory
{
public:
    virtual Mesh createMesh() override;
};

}

#endif
