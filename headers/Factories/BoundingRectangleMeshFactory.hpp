#ifndef BOUNDINGRECTANGLEMESHFACTORY_HPP
# define BOUNDINGRECTANGLEMESHFACTORY_HPP

# include "pch.hpp"
# include "Interfaces/IMeshFactory.hpp"

namespace GilqEngine
{

class BoundingRectangleMeshFactory : public IMeshFactory
{
public:
    virtual Mesh createMesh() override;
};

}

#endif
