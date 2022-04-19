#include "Core/Mesh.hpp"
#include "Debug/Trace.hpp"

namespace NAMESPACE
{

Mesh::Mesh()
{
    
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

void Mesh::configure()
{
    TRACE();
    _vertexData.configureVAO();
}

void Mesh::draw()
{
    TRACE();
    _vertexData.bind();
    _material.bind();
    GLCall(glDrawElements(GL_TRIANGLES, _vertexData.getCountOfIndeces(), GL_UNSIGNED_INT, 0));
    _vertexData.unbind();
    _material.unbind();
}

}
