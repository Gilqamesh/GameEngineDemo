#ifndef TRIANGLEMESHFACTORY_HPP
# define TRIANGLEMESHFACTORY_HPP

# include "Interfaces/IMeshFactory.hpp"

namespace NAMESPACE
{

class TriangleMeshFactory : public IMeshFactory
{
public:
    virtual Mesh createMesh() override;
};

}

#endif
