#ifndef CIRCLEMESHFACTORY2D_HPP
# define CIRCLEMESHFACTORY2D_HPP

# include "Interfaces/IMeshFactory.hpp"

namespace GilqEngine
{

class CircleMeshFactory2D : public IMeshFactory
{
public:
    virtual Mesh createMesh() override;
};

}

#endif
