#ifndef BOUNDINGRECTANGLEMESHFACTORY_HPP
# define BOUNDINGRECTANGLEMESHFACTORY_HPP

# include "pch.hpp"
# include "Interfaces/IMeshPrimitive.hpp"

namespace GilqEngine
{

class BoundingRectangleMeshPrimitive : public IMeshPrimitive
{
public:
    virtual Mesh createMesh() override;
};

}

#endif
