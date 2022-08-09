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
        _vertexData = move(other._vertexData);
        _material = other._material;
    }
    return (*this);
}

void Mesh::draw(Shader *shader)
{
    TRACE();
    _vertexData.bind();
    _material.setShaderUniforms(shader);
    GLCall(glDrawElements(_vertexData.getMode(), _vertexData.getCountOfIndeces(), GL_UNSIGNED_INT, nullptr));
    _vertexData.unbind();
}

void Mesh::drawInstanced(Shader *shader, uint32 numberOfInstances)
{
    TRACE();
    _vertexData.bind();
    _material.setShaderUniforms(shader);
    GLCall(glDrawArraysInstanced(_vertexData.getMode(), 0, 6, numberOfInstances));
    _vertexData.unbind();
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

void Mesh::updateVBO_modelMatrix(const void *data, GLuint size)
{
    TRACE();
    _vertexData.updateVBO_modelMatrix(data, size);
}

void Mesh::updateIBO(const void *data, GLuint count)
{
    TRACE();
    _vertexData.updateIBO(data, count);
}

}
