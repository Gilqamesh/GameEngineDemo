#ifndef IMESHFACTORY_HPP
# define IMESHFACTORY_HPP

# include "pch.hpp"
# include "Core/Mesh.hpp"
# include "Math/Matrix.hpp"

namespace GilqEngine
{

class IMeshFactory
{
public:
    virtual ~IMeshFactory() = default;

    /*
     * 'transform' is initial transform matrix used to create the Mesh object
     */
    virtual Mesh createMesh() = 0;
};

}

#endif
