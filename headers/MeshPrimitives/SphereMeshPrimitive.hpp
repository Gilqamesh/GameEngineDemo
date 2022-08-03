#ifndef SPHEREMESHFACTORY_HPP
# define SPHEREMESHFACTORY_HPP

# include "Interfaces/IMeshPrimitive.hpp"

namespace GilqEngine
{

class SphereMeshPrimitive : public IMeshPrimitive
{
public:
    virtual Mesh createMesh() override;
};

}

#endif
