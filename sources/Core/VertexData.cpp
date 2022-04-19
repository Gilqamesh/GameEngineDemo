#include "Core/VertexData.hpp"

namespace NAMESPACE
{

VertexData::VertexData()
{
    _vertexArray.create();
    _layout.push<GLfloat>(3); // Position
    _layout.push<GLfloat>(3); // Normal
    _layout.push<GLfloat>(2); // Texture
}

VertexData::VertexData(VertexData &&other)
    // invoke the copy move operator for each OpenGL context objects
    : _vertexArray(std::move(other._vertexArray)),
    _vertexPositionBuffer(std::move(other._vertexPositionBuffer)),
    _vertexNormalBuffer(std::move(other._vertexNormalBuffer)),
    _vertexTextureBuffer(std::move(other._vertexTextureBuffer)),
    _indexBuffer(std::move(other._indexBuffer))
{
    TRACE();
}

VertexData &VertexData::operator=(VertexData &&other)
{
    TRACE();
    if (this != &other)
    {
        // invoke the move assignment operator for each OpenGL context objects
        _vertexArray = std::move(other._vertexArray);
        _vertexPositionBuffer = std::move(other._vertexPositionBuffer);
        _vertexNormalBuffer = std::move(other._vertexNormalBuffer);
        _vertexTextureBuffer = std::move(other._vertexTextureBuffer);
        _indexBuffer = std::move(other._indexBuffer);
    }
    return (*this);
}

void VertexData::configureVAO()
{
    TRACE();
    _vertexArray.bind();
    _vertexPositionBuffer.bind();
    _vertexArray.pushVertexAttribute(_layout[0], _layout.getStride());
    _vertexNormalBuffer.bind();
    _vertexArray.pushVertexAttribute(_layout[1], _layout.getStride());
    _vertexTextureBuffer.bind();
    _vertexArray.pushVertexAttribute(_layout[2], _layout.getStride());
    unbind();
}

void VertexData::updateVBO_position(VertexVector<PositionVertexAttribute> &data)
{
    TRACE();
    _vertexPositionBuffer.bind();
    _vertexPositionBuffer.update(data.getData(), data.getSize());
    _vertexPositionBuffer.unbind();
}

void VertexData::updateVBO_normal(VertexVector<NormalVertexAttribute> &data)
{
    TRACE();
    _vertexNormalBuffer.bind();
    _vertexNormalBuffer.update(data.getData(), data.getSize());
    _vertexNormalBuffer.unbind();
}

void VertexData::updateVBO_texture(VertexVector<TextureVertexAttribute> &data)
{
    TRACE();
    _vertexTextureBuffer.bind();
    _vertexTextureBuffer.update(data.getData(), data.getSize());
    _vertexTextureBuffer.unbind();
}

void VertexData::updateIBO(const void *data, GLuint count)
{
    TRACE();
    _indexBuffer.bind();
    _indexBuffer.update(data, count);
    _indexBuffer.unbind();
}

void VertexData::bind()
{
    TRACE();
    _vertexArray.bind();
    _vertexPositionBuffer.bind();
    _vertexNormalBuffer.bind();
    _vertexTextureBuffer.bind();
    _indexBuffer.bind();
}

void VertexData::unbind()
{
    TRACE();
    _vertexArray.unbind();
    _vertexPositionBuffer.unbind();
    _vertexNormalBuffer.unbind();
    _vertexTextureBuffer.unbind();
    _indexBuffer.unbind();
}

}
