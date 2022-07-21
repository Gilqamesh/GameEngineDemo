#include "Core/Mesh.hpp"
#include "Debug/Trace.hpp"

namespace GilqEngine
{

Mesh::Mesh()
{
    TRACE();
}

Mesh::Mesh(Mesh &&other)
    // invoke the copy move operator for each OpenGL context objects
    : _vertexData(std::move(other._vertexData)),
    _material(other._material)
{
    TRACE();
}

Mesh &Mesh::operator=(Mesh &&other)
{
    TRACE();
    if (this != &other)
    {
        // invoke the move assignment operator for each OpenGL context objects
        _vertexData = std::move(other._vertexData);
        _material = other._material;
    }
    return (*this);
}

void Mesh::draw(Shader *shader)
{
    TRACE();
    _vertexData.bind();
    shader->bind();
    _material.setShaderUniforms(shader);
    GLCall(glDrawElements(GL_TRIANGLES, _vertexData.getCountOfIndeces(), GL_UNSIGNED_INT, nullptr));
    _vertexData.unbind();
    shader->unbind();
}

}
