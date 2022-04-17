#ifndef TRIANGLEMESHFACTORY_HPP
# define TRIANGLEMESHFACTORY_HPP

# include "Interfaces/IMeshFactory.hpp"

namespace NAMESPACE
{

class TriangleMeshFactory : public IMeshFactory
{
public:
    virtual StaticMesh createStaticMesh(const Matrix<GLfloat, 4, 4> &modelMatrix) override;
    virtual DynamicMesh createDynamicMesh(const Matrix<GLfloat, 4, 4> &modelMatrix) override;
};

}

#endif
