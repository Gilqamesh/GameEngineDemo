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
    _vertexModelMatrixBuffer(move(other._vertexModelMatrixBuffer)),
    _indexBuffer(move(other._indexBuffer)),
    _vertexVectorPosition2D(other._vertexVectorPosition2D),
    _vertexVectorPosition3D(other._vertexVectorPosition3D),
    _vertexVectorNormal(other._vertexVectorNormal),
    _vertexVectorTexture(other._vertexVectorTexture),
    _vertexVectorModelMatrix(other._vertexVectorModelMatrix),
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
        _vertexModelMatrixBuffer = move(other._vertexModelMatrixBuffer);
        _indexBuffer = move(other._indexBuffer);
        _vertexVectorPosition2D = other._vertexVectorPosition2D;
        _vertexVectorPosition3D = other._vertexVectorPosition3D;
        _vertexVectorNormal = other._vertexVectorNormal;
        _vertexVectorTexture = other._vertexVectorTexture;
        _vertexVectorModelMatrix = other._vertexVectorModelMatrix;
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

void VertexData::pushModelMatrixAttribute(const ModelMatrixVertexAttribute &data)
{
    TRACE();
    _vertexVectorModelMatrix.push_back(data);
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
    if (_vertexVectorPosition2D.size())
    {
        _vertexPositionBuffer = VertexBuffer(_vertexVectorPosition2D.data(), _vertexVectorPosition2D.size());
    }
    if (_vertexVectorPosition3D.size())
    {
        _vertexPositionBuffer = VertexBuffer(_vertexVectorPosition3D.data(), _vertexVectorPosition3D.size());
    }
}

void VertexData::configurePositionAttributeDynamic()
{
    TRACE();
    if (_vertexVectorPosition2D.size())
    {
        _vertexPositionBuffer = VertexBuffer(_vertexVectorPosition2D.size());
        updateVBO_position2D(_vertexVectorPosition2D.data(), _vertexVectorPosition2D.size());
    }
    if (_vertexVectorPosition3D.size())
    {
        _vertexPositionBuffer = VertexBuffer(_vertexVectorPosition3D.size());
        updateVBO_position3D(_vertexVectorPosition3D.data(), _vertexVectorPosition2D.size());
    }
}

void VertexData::configureNormalAttribute()
{
    TRACE();
    _vertexNormalBuffer = VertexBuffer(_vertexVectorNormal.data(), _vertexVectorNormal.size());
}

void VertexData::configureTextureAttribute()
{
    TRACE();
    _vertexTextureBuffer = VertexBuffer(_vertexVectorTexture.data(), _vertexVectorTexture.size());
}

void VertexData::configureModelMatrixAttribute()
{
    TRACE();
    _vertexModelMatrixBuffer = VertexBuffer(_vertexVectorModelMatrix.size());
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
    if (_vertexVectorPosition2D.size())
    {
        _vertexArray.pushVertexAttribute(_vertexVectorPosition2D.layout(), layoutIndex++, 0);
        _vertexVectorPosition2D.clear();
    }
    if (_vertexVectorPosition3D.size())
    {
        _vertexArray.pushVertexAttribute(_vertexVectorPosition3D.layout(), layoutIndex++, 0);
        _vertexVectorPosition3D.clear();
    }

    if (_vertexVectorNormal.size())
    {
        _vertexNormalBuffer.bind();
        _vertexArray.pushVertexAttribute(_vertexVectorNormal.layout(), layoutIndex++, 0);
        _vertexVectorNormal.clear();
    }

    if (_vertexVectorTexture.size())
    {
        _vertexTextureBuffer.bind();
        _vertexArray.pushVertexAttribute(_vertexVectorTexture.layout(), layoutIndex++, 0);
        _vertexTextureBuffer.unbind();
        _vertexVectorTexture.clear();
    }

    if (_vertexVectorModelMatrix.size())
    {
        _vertexModelMatrixBuffer.bind();
        uint32 modelMatrixVertexAttributeLocation = layoutIndex;
        _vertexArray.pushVertexAttribute(_vertexVectorModelMatrix.layout(), layoutIndex++, 0);
        _vertexArray.pushVertexAttribute(_vertexVectorModelMatrix.layout(), layoutIndex++, 4 * sizeof(float));
        _vertexArray.pushVertexAttribute(_vertexVectorModelMatrix.layout(), layoutIndex++, 8 * sizeof(float));
        _vertexArray.pushVertexAttribute(_vertexVectorModelMatrix.layout(), layoutIndex++, 12 * sizeof(float));
        _vertexModelMatrixBuffer.unbind();
        GLCall(glVertexAttribDivisor(modelMatrixVertexAttributeLocation, 1));
        _vertexVectorModelMatrix.clear();
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

void VertexData::updateVBO_modelMatrix(const void *data, GLuint size)
{
    TRACE();
    _vertexModelMatrixBuffer.bind();
    _vertexModelMatrixBuffer.update(data, size);
    _vertexModelMatrixBuffer.unbind();    
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
