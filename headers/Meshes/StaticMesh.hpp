#ifndef STATICMESH_HPP
# define STATICMESH_HPP

# include "Interfaces/IMesh.hpp"
# include "Interfaces/IVertex.hpp"
# include "Core/VertexArray.hpp"
# include "Core/VertexBuffer.hpp"
# include "Core/IndexBuffer.hpp"

namespace NAMESPACE
{

class StaticMesh : public IMesh
{
VertexArray     _vertexArray;
VertexBuffer    _vertexBuffer;
IndexBuffer     _indexBuffer;
public:
    StaticMesh(const std::vector<IVertex> &vertices, const std::vector<GLuint> &indeces);
    StaticMesh(const std::vector<IVertex> &vertices, const std::vector<GLuint> &indeces, const Material &material);

    // to avoid destruction of OpenGL context objects: VertexArray, VertexBuffer, IndexBuffer
    StaticMesh(const StaticMesh &other) = delete;
    StaticMesh &operator=(const StaticMesh &other) = delete;

    StaticMesh(StaticMesh &&other);
    StaticMesh &operator=(StaticMesh &&other);

    void draw();
};

}

#endif
