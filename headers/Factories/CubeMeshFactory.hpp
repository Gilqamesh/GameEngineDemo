#ifndef CUBEMESHFACTORY_HPP
# define CUBEMESHFACTORY_HPP

# include "Interfaces/IMeshFactory.hpp"

namespace NAMESPACE
{

class CubeMeshFactory : public IMeshFactory
{
public:
    virtual Mesh createMesh() override;
};

}

#endif
