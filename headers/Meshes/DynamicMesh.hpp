#ifndef DYNAMICMESH_HPP
# define DYNAMICMESH_HPP

# include "Interfaces/IMesh.hpp"
# include "Interfaces/IVertex.hpp"
# include "Core/VertexArray.hpp"
# include "Core/VertexBuffer.hpp"
# include "Core/IndexBuffer.hpp"

namespace NAMESPACE
{

class DynamicMesh : public IMesh
{
VertexArray     _vertexArray;
VertexBuffer    _vertexBuffer;
IndexBuffer     _indexBuffer;
public:
    // 'vertexBufferSize' is in bytes
    DynamicMesh(GLuint vertexBufferSize, const std::vector<GLuint> &indeces);
    DynamicMesh(GLuint vertexBufferSize, const std::vector<GLuint> &indeces, const Material &material);

    void setVertexBuffer(const std::vector<IVertex> vertices);
    void draw();

};

}

#endif
