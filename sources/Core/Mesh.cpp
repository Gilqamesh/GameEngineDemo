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

void Mesh::draw()
{
    TRACE();
    _vertexData.bind();
    // auto &position = _vertexData.getPositionBuffer();
    // auto &normal = _vertexData.getNormalBuffer();
    // auto &texture = _vertexData.getTextureBuffer();
    // auto &index = _vertexData.getIndexBuffer();
    // LOG("Position");
    // for (unsigned int i = 0; i < position.getSize() / sizeof(float); ++i)
    // {
    //     printf("%f, ", ((float*)position.getData())[i]);
    // }
    // LOG("");
    // LOG("Normal");
    // for (unsigned int i = 0; i < normal.getSize() / sizeof(float); ++i)
    // {
    //     printf("%f, ", ((float*)normal.getData())[i]);
    // }
    // LOG("");
    // LOG("Texture");
    // for (unsigned int i = 0; i < texture.getSize() / sizeof(float); ++i)
    // {
    //     printf("%f, ", ((float*)texture.getData())[i]);
    // }
    // LOG("");
    // LOG("Index");
    // for (unsigned int i = 0; i < index.getCount(); ++i)
    // {
    //     printf("%d, ", ((unsigned int*)index.getData())[i]);
    // }
    // LOG("");
    _material.bind();
    const auto *shader = _material.getShader();
    LOG("shader->getName(): " << shader->getName());
    LOG("shader->getId(): " << shader->getId());
    LOG("_material.getDiffuse()->getName(): " << _material.getDiffuse()->getName());
    LOG("_vertexData.getCountOfIndeces(): " << _vertexData.getCountOfIndeces());
    GLCall(glDrawElements(GL_TRIANGLES, _vertexData.getCountOfIndeces(), GL_UNSIGNED_INT, nullptr));
    _vertexData.unbind();
    _material.unbind();
}

}
