#include "Meshes/StaticMesh.hpp"

namespace NAMESPACE
{

StaticMesh::StaticMesh(const std::vector<IVertex> &vertices, const std::vector<GLuint> &indeces, const Material &material)
    : IMesh(),
    _vertexArray(),
    _vertexBuffer(vertices.data(), vertices.size() * vertices[0].getStride()),
    _indexBuffer(indeces.data(), indeces.size()),
    _material(material)
{
    TRACE();
    ASSERT(vertices.size());
    _vertexArray.configure(_vertexBuffer, vertices[0].getLayout());
}

void StaticMesh::drawMesh()
{
    TRACE();
    _vertexArray.bind();
    _vertexBuffer.bind();
    _indexBuffer.bind();
    _material.bind();
    GLCall(glDrawElements(GL_TRIANGLES, _indexBuffer.getCount(), GL_UNSIGNED_INT, 0));
    _vertexArray.unbind();
    _vertexBuffer.unbind();
    _indexBuffer.unbind();
    _material.unbind();
}

}
