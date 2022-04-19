#ifndef TRIANGLEMESHFACTORY_HPP
# define TRIANGLEMESHFACTORY_HPP

# include "Interfaces/IMeshFactory.hpp"

namespace NAMESPACE
{

class TriangleMeshFactory : public IMeshFactory
{
public:
    virtual Mesh createMesh(const Matrix<GLfloat, 4, 4> &transform) override;
};

}

#endif
