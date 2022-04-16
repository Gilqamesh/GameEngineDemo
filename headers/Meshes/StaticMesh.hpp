#ifndef STATICMESH_HPP
# define STATICMESH_HPP

# include "Interfaces/IMesh.hpp"

namespace NAMESPACE
{

class StaticMesh : public IMesh
{
VertexArray     _vertexArray;   // owns
VertexBuffer    _vertexBuffer;  // owns
IndexBuffer     _indexBuffer;   // owns
Material        _material;      // does not own
public:
    StaticMesh(const std::vector<IVertex> &vertices, const std::vector<GLuint> &indeces, const Material &material);

    virtual void drawMesh() override;
};

}

#endif
