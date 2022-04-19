#ifndef IMESHFACTORY_HPP
# define IMESHFACTORY_HPP

# include "pch.hpp"
# include "Core/Mesh.hpp"
# include "Math/Matrix.hpp"

namespace NAMESPACE
{

class IMeshFactory
{
public:
    virtual ~IMeshFactory() = default;

    /*
     * 'transform' is initial transform matrix used to create the Mesh object
     */
    virtual Mesh createMesh(const Matrix<GLfloat, 4, 4> &transform) = 0;
};

}

#endif
