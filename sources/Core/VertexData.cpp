#include "Core/VertexData.hpp"

namespace GilqEngine
{

VertexData::VertexData()
    : _nOfIndices(0)
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
    : _vertexArray(move(other._vertexArray)),
    _vertexPositionBuffer(move(other._vertexPositionBuffer)),
    _vertexNormalBuffer(move(other._vertexNormalBuffer)),
    _vertexTextureBuffer(move(other._vertexTextureBuffer)),
    _indexBuffer(move(other._indexBuffer)),
    _vertexVectorPosition2D(other._vertexVectorPosition2D),
    _vertexVectorPosition3D(other._vertexVectorPosition3D),
    _vertexVectorNormal(other._vertexVectorNormal),
    _vertexVectorTexture(other._vertexVectorTexture),
    _indices(other._indices),
    _nOfIndices(other._nOfIndices),
    _mode(other._mode)
{
    TRACE();
}

VertexData &VertexData::operator=(VertexData &&other)
{
    TRACE();
    if (this != &other)
    {
        // invoke the move assignment operator for each OpenGL context objects
        _vertexArray = move(other._vertexArray);
        _vertexPositionBuffer = move(other._vertexPositionBuffer);
        _vertexNormalBuffer = move(other._vertexNormalBuffer);
        _vertexTextureBuffer = move(other._vertexTextureBuffer);
        _indexBuffer = move(other._indexBuffer);
        _vertexVectorPosition2D = other._vertexVectorPosition2D;
        _vertexVectorPosition3D = other._vertexVectorPosition3D;
        _vertexVectorNormal = other._vertexVectorNormal;
        _vertexVectorTexture = other._vertexVectorTexture;
        _indices = other._indices;
        _nOfIndices = other._nOfIndices;
        _mode = other._mode;
    }
    return (*this);
}

void VertexData::pushPositionAttribute2D(const PositionVertexAttribute2D &data)
{
    TRACE();
    _vertexVectorPosition2D.push_back(data);
}

void VertexData::pushPositionAttribute3D(const PositionVertexAttribute3D &data)
{
    TRACE();
    _vertexVectorPosition3D.push_back(data);
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

void VertexData::pushIndices(const vector<unsigned int> &indices)
{
    TRACE();
    _nOfIndices += (uint32)indices.size();
    _indices.insert(_indices.end(), indices.begin(), indices.end());
}

void VertexData::pushIndex(unsigned int index)
{
    TRACE();
    ++_nOfIndices;
    _indices.push_back(index);
}

void VertexData::configurePositionAttribute()
{
    TRACE();
    if (_vertexVectorPosition2D.getSize())
    {
        _vertexPositionBuffer = VertexBuffer(_vertexVectorPosition2D.getData(), _vertexVectorPosition2D.getSize());
    }
    if (_vertexVectorPosition3D.getSize())
    {
        _vertexPositionBuffer = VertexBuffer(_vertexVectorPosition3D.getData(), _vertexVectorPosition3D.getSize());
    }
}

void VertexData::configurePositionAttributeDynamic()
{
    TRACE();
    if (_vertexVectorPosition2D.getSize())
    {
        _vertexPositionBuffer = VertexBuffer(_vertexVectorPosition2D.getSize());
        updateVBO_position2D(_vertexVectorPosition2D.getData(), _vertexVectorPosition2D.getSize());
    }
    if (_vertexVectorPosition3D.getSize())
    {
        _vertexPositionBuffer = VertexBuffer(_vertexVectorPosition3D.getSize());
        updateVBO_position3D(_vertexVectorPosition3D.getData(), _vertexVectorPosition2D.getSize());
    }
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
    _indices.clear();
}

// This method should push attributes only that has been configured via 'configure' methods prior to this call
void VertexData::configureVAO()
{
    TRACE();
    _vertexArray.bind();
    
    uint32 layoutIndex = 0;
    _vertexPositionBuffer.bind();
    if (_vertexVectorPosition2D.getSize())
    {
        _vertexArray.pushVertexAttribute(_vertexVectorPosition2D.getLayout(), layoutIndex++);
        _vertexVectorPosition2D.clear();
    }
    if (_vertexVectorPosition3D.getSize())
    {
        _vertexArray.pushVertexAttribute(_vertexVectorPosition3D.getLayout(), layoutIndex++);
        _vertexVectorPosition3D.clear();
    }

    if (_vertexVectorNormal.getSize())
    {
        _vertexNormalBuffer.bind();
        _vertexArray.pushVertexAttribute(_vertexVectorNormal.getLayout(), layoutIndex++);
        _vertexVectorNormal.clear();
    }

    if (_vertexVectorTexture.getSize())
    {
        _vertexTextureBuffer.bind();
        _vertexArray.pushVertexAttribute(_vertexVectorTexture.getLayout(), layoutIndex++);
        _vertexTextureBuffer.unbind();
        _vertexVectorTexture.clear();
    }

    unbind();
}

void VertexData::updateVBO_position2D(const void *data, GLuint size)
{
    TRACE();
    _vertexPositionBuffer.bind();
    _vertexPositionBuffer.update(data, size);
    _vertexPositionBuffer.unbind();
}

void VertexData::updateVBO_position3D(const void *data, GLuint size)
{
    TRACE();
    _vertexPositionBuffer.bind();
    _vertexPositionBuffer.update(data, size);
    _vertexPositionBuffer.unbind();
}

void VertexData::updateVBO_normal(const void *data, GLuint size)
{
    TRACE();
    _vertexNormalBuffer.bind();
    _vertexNormalBuffer.update(data, size);
    _vertexNormalBuffer.unbind();
}

void VertexData::updateVBO_texture(const void *data, GLuint size)
{
    TRACE();
    _vertexTextureBuffer.bind();
    _vertexTextureBuffer.update(data, size);
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
