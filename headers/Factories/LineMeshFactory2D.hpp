#ifndef LINEMESHFACTORY2D_HPP
# define LINEMESHFACTORY2D_HPP

# include "Interfaces/IMeshFactory.hpp"

namespace GilqEngine
{

class LineMeshFactory2D : public IMeshFactory
{
public:
    virtual Mesh createMesh() override;
};

}

#endif
