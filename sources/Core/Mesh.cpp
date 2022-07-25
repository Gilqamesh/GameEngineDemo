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
    : _vertexData(move(other._vertexData)),
      _material(other._material),
      _mode(other._mode)
{
    TRACE();
}

Mesh &Mesh::operator=(Mesh &&other)
{
    TRACE();
    if (this != &other)
    {
        // invoke the move assignment operator for each OpenGL context objects
        _vertexData = move(other._vertexData);
        _material = other._material;
        _mode = other._mode;
    }
    return (*this);
}

void Mesh::setDrawMode(GLenum mode)
{
    _mode = mode;
}

void Mesh::draw(Shader *shader)
{
    TRACE();
    _vertexData.bind();
    shader->bind();
    _material.setShaderUniforms(shader);
    GLCall(glDrawElements(_mode, _vertexData.getCountOfIndeces(), GL_UNSIGNED_INT, nullptr));
    _vertexData.unbind();
    shader->unbind();
}

void Mesh::updateVBO_position2D(const void *data, GLuint size)
{
    TRACE();
    _vertexData.updateVBO_position2D(data, size);
}

void Mesh::updateVBO_position3D(const void *data, GLuint size)
{
    TRACE();
    _vertexData.updateVBO_position3D(data, size);
}

void Mesh::updateVBO_normal(const void *data, GLuint size)
{
    TRACE();
    _vertexData.updateVBO_normal(data, size);
}

void Mesh::updateVBO_texture(const void *data, GLuint size)
{
    TRACE();
    _vertexData.updateVBO_texture(data, size);
}

void Mesh::updateIBO(const void *data, GLuint count)
{
    TRACE();
    _vertexData.updateIBO(data, count);
}

}
