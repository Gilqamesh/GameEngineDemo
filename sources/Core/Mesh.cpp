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

void Mesh::updateBufferFloat2(uint32 layoutIndex, const void *data, uint32 size)
{
    TRACE();
    _vertexData.updateBufferFloat2(layoutIndex, data, size);
}

void Mesh::updateBufferFloat3(uint32 layoutIndex, const void *data, uint32 size)
{
    TRACE();
    _vertexData.updateBufferFloat3(layoutIndex, data, size);
}

void Mesh::updateBufferMat4(uint32 layoutIndex, const void *data, uint32 size)
{
    TRACE();
    _vertexData.updateBufferMat4(layoutIndex, data, size);
}

void Mesh::updateIBO(const void *data, GLuint count)
{
    TRACE();
    _vertexData.updateIBO(data, count);
}

}
