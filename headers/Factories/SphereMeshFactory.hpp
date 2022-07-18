#ifndef SPHEREMESHFACTORY_HPP
# define SPHEREMESHFACTORY_HPP

# include "Interfaces/IMeshFactory.hpp"

namespace NAMESPACE
{

class SphereMeshFactory : public IMeshFactory
{
public:
    virtual Mesh createMesh() override;
};

}

#endif
