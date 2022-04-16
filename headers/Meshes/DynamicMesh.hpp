#ifndef DYNAMICMESH_HPP
# define DYNAMICMESH_HPP

# include "Interfaces/IMesh.hpp"
# include "Interfaces/IVertex.hpp"
# include "Core/VertexArray.hpp"
# include "Core/VertexBuffer.hpp"
# include "Core/IndexBuffer.hpp"
# include "Core/Material.hpp"


namespace NAMESPACE
{

class DynamicMesh : public IMesh
{
VertexArray     _vertexArray;   // owns
VertexBuffer    _vertexBuffer;  // owns
IndexBuffer     _indexBuffer;   // owns
Material        _material;      // does not own
public:
    DynamicMesh(GLuint vertexBufferSize, const std::vector<GLuint> &indeces, const Material &material);

    void setVertexBuffer(const std::vector<IVertex> vertices);
    virtual void drawMesh() override;
};

}

#endif
