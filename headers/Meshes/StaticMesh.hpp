#ifndef STATICMESH_HPP
# define STATICMESH_HPP

# include "Interfaces/IMesh.hpp"
# include "Interfaces/IVertex.hpp"
# include "Core/VertexArray.hpp"
# include "Core/VertexBuffer.hpp"
# include "Core/IndexBuffer.hpp"
# include "Core/Material.hpp"

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
