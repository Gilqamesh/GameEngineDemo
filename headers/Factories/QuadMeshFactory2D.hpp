#ifndef QUADMESHFACTORY2D_HPP
# define QUADMESHFACTORY2D_HPP

# include "Interfaces/IMeshFactory.hpp"

namespace GilqEngine
{

class QuadMeshFactory2D : public IMeshFactory
{
public:
    virtual Mesh createMesh() override;
};

}

#endif
