#include "Core/VertexData.hpp"

namespace GilqEngine
{

VertexData::VertexData()
{
    TRACE();
    _vertexArray.create();
}

VertexData::~VertexData()
{
    TRACE();
}

VertexData::VertexData(VertexData &&other)
    // invoke the copy move operator for each OpenGL context objects
    : _vertexArray(std::move(other._vertexArray)),
    _vertexPositionBuffer(std::move(other._vertexPositionBuffer)),
    _vertexNormalBuffer(std::move(other._vertexNormalBuffer)),
    _vertexTextureBuffer(std::move(other._vertexTextureBuffer)),
    _indexBuffer(std::move(other._indexBuffer)),
    _vertexVectorPosition(other._vertexVectorPosition),
    _vertexVectorNormal(other._vertexVectorNormal),
    _vertexVectorTexture(other._vertexVectorTexture),
    _indices(other._indices)
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
        _vertexVectorPosition = other._vertexVectorPosition;
        _vertexVectorNormal = other._vertexVectorNormal;
        _vertexVectorTexture = other._vertexVectorTexture;
        _indices = other._indices;
    }
    return (*this);
}

void VertexData::pushPositionAttribute(const PositionVertexAttribute &data)
{
    TRACE();
    _vertexVectorPosition.push_back(data);
}

void VertexData::pushNormalAttribute(const NormalVertexAttribute &data)
{
    TRACE();
    _vertexVectorNormal.push_back(data);
}

void VertexData::pushTextureAttribute(const TextureVertexAttribute &data)
{
    TRACE();
    _vertexVectorTexture.push_back(data);
}

void VertexData::pushIndices(const std::vector<unsigned int> &indices)
{
    TRACE();
    _indices.insert(_indices.end(), indices.begin(), indices.end());
}

void VertexData::pushIndex(unsigned int index)
{
    TRACE();
    _indices.push_back(index);
}

void VertexData::configurePositionAttribute()
{
    TRACE();
    _vertexPositionBuffer = VertexBuffer(_vertexVectorPosition.getData(), _vertexVectorPosition.getSize());
}

void VertexData::configureNormalAttribute()
{
    TRACE();
    _vertexNormalBuffer = VertexBuffer(_vertexVectorNormal.getData(), _vertexVectorNormal.getSize());
}

void VertexData::configureTextureAttribute()
{
    TRACE();
    _vertexTextureBuffer = VertexBuffer(_vertexVectorTexture.getData(), _vertexVectorTexture.getSize());
}

void VertexData::configureIndices()
{
    TRACE();
    _indexBuffer = IndexBuffer(_indices.data(), (GLuint)_indices.size());
}

void VertexData::configureVAO()
{
    TRACE();
    _vertexArray.bind();
    
    _vertexPositionBuffer.bind();
    _vertexArray.pushVertexAttribute(_vertexVectorPosition.getLayout(), 0);

    _vertexNormalBuffer.bind();
    _vertexArray.pushVertexAttribute(_vertexVectorNormal.getLayout(), 1);

    _vertexTextureBuffer.bind();
    _vertexArray.pushVertexAttribute(_vertexVectorTexture.getLayout(), 2);
    _vertexTextureBuffer.unbind();

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
    _indexBuffer.bind();
}

void VertexData::unbind()
{
    TRACE();
    _vertexArray.unbind();
    _indexBuffer.unbind();
}

}
