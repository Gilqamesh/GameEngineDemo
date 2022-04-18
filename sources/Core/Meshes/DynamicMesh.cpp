#include "Core/Meshes/DynamicMesh.hpp"

namespace NAMESPACE
{

DynamicMesh::DynamicMesh(GLuint vertexBufferSize, const std::vector<GLuint> &indeces)
    : IMesh(),
    _vertexArray(),
    _vertexBuffer(vertexBufferSize),
    _indexBuffer(indeces.data(), indeces.size())
{
    TRACE();
}

DynamicMesh::DynamicMesh(GLuint vertexBufferSize, const std::vector<GLuint> &indeces, const Material &material)
    : IMesh(material),
    _vertexArray(),
    _vertexBuffer(vertexBufferSize),
    _indexBuffer(indeces.data(), indeces.size())
{
    TRACE();
}

DynamicMesh::DynamicMesh(DynamicMesh &&other)
    // invoke the copy move operator for each OpenGL context objects
    : _vertexArray(std::move(other._vertexArray)),
    _vertexBuffer(std::move(other._vertexBuffer)),
    _indexBuffer(std::move(other._indexBuffer))
{

}

DynamicMesh &DynamicMesh::operator=(DynamicMesh &&other)
{
    if (this != &other)
    {
        // invoke the move assignment operator for each OpenGL context objects
        _vertexArray = std::move(other._vertexArray);
        _vertexBuffer = std::move(other._vertexBuffer);
        _indexBuffer = std::move(other._indexBuffer);
    }
    return (*this);
}

/*
 * unfinished
 */
void DynamicMesh::setVertexBuffer(const std::vector<IVertex> vertices)
{
    TRACE();
    ASSERT(vertices.size());
    _vertexArray.bind();
    _vertexBuffer.bind();
    GLCall(glBufferSubData(GL_ARRAY_BUFFER, 0, vertices.size() * vertices[0].getStride(), vertices.data()));
    _vertexArray.configure(_vertexBuffer, vertices[0].getLayout(), _indexBuffer);
}

void DynamicMesh::draw()
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
