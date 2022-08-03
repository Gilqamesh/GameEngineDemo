#ifndef CIRCLEMESHFACTORY2D_HPP
# define CIRCLEMESHFACTORY2D_HPP

# include "Interfaces/IMeshPrimitive.hpp"

namespace GilqEngine
{

class CircleMeshPrimitive2D : public IMeshPrimitive
{
public:
    virtual Mesh createMesh() override;
};

}

#endif
