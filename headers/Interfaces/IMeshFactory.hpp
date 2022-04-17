#ifndef IMESHFACTORY_HPP
# define IMESHFACTORY_HPP

# include "pch.hpp"
# include "Meshes/StaticMesh.hpp"
# include "Meshes/DynamicMesh.hpp"
# include "Math/Matrix.hpp"

namespace NAMESPACE
{

class IMeshFactory
{
public:
    virtual ~IMeshFactory() = default;

    virtual StaticMesh createStaticMesh(const Matrix<GLfloat, 4, 4> &modelMatrix) = 0;
    virtual DynamicMesh createDynamicMesh(const Matrix<GLfloat, 4, 4> &modelMatrix) = 0;
};

}

#endif