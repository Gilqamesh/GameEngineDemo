#include "Meshes/DynamicMesh.hpp"

namespace NAMESPACE
{

DynamicMesh::DynamicMesh(GLuint vertexBufferSize, const std::vector<GLuint> &indeces, const Material &material)
    : IMesh(),
    _vertexArray(),
    _vertexBuffer(vertexBufferSize),
    _indexBuffer(indeces.data(), indeces.size()),
    _material(material)
{
    TRACE();
}

void DynamicMesh::setVertexBuffer(const std::vector<IVertex> vertices)
{
    TRACE();
    ASSERT(vertices.size());
    _vertexBuffer.bind();
    GLCall(glBufferSubData(GL_ARRAY_BUFFER, 0, vertices.size() * vertices[0].getStride(), vertices.data()));
    _vertexArray.bind();
    _vertexArray.configure(_vertexBuffer, vertices[0].getLayout());
    _vertexArray.unbind();
    _vertexBuffer.unbind();
}

void DynamicMesh::drawMesh()
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
