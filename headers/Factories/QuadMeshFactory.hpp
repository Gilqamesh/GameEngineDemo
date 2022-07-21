#ifndef QUADMESHFACTORY_HPP
# define QUADMESHFACTORY_HPP

# include "Interfaces/IMeshFactory.hpp"

namespace GilqEngine
{

class QuadMeshFactory : public IMeshFactory
{
public:
    virtual Mesh createMesh() override;
};

}

#endif
