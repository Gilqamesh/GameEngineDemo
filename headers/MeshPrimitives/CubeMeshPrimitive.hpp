#ifndef CUBEMESHFACTORY_HPP
# define CUBEMESHFACTORY_HPP

# include "Interfaces/IMeshPrimitive.hpp"

namespace GilqEngine
{

class CubeMeshPrimitive : public IMeshPrimitive
{
public:
    virtual Mesh createMesh() override;
};

}

#endif
