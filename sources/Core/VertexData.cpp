#include "Core/VertexData.hpp"

namespace GilqEngine
{

VertexData::VertexData(const string& name)
    : _nOfIndices(0), _name(name)
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
    _vertexBuffersFloat2_static(move(other._vertexBuffersFloat2_static)),
    _vertexBuffersFloat3_static(move(other._vertexBuffersFloat3_static)),
    _vertexBuffersFloat4_static(move(other._vertexBuffersFloat4_static)),
    _vertexBuffersMat4_static(move(other._vertexBuffersMat4_static)),
    _vertexBuffersFloat2_dynamic(move(other._vertexBuffersFloat2_dynamic)),
    _vertexBuffersFloat3_dynamic(move(other._vertexBuffersFloat3_dynamic)),
    _vertexBuffersFloat4_dynamic(move(other._vertexBuffersFloat4_dynamic)),
    _vertexBuffersMat4_dynamic(move(other._vertexBuffersMat4_dynamic)),
    _indexBuffer(move(other._indexBuffer)),
    _vertexVectorFloat2_static(other._vertexVectorFloat2_static),
    _vertexVectorFloat3_static(other._vertexVectorFloat3_static),
    _vertexVectorFloat4_static(other._vertexVectorFloat4_static),
    _vertexVectorMat4_static(other._vertexVectorMat4_static),
    _vertexVectorFloat2_dynamic(other._vertexVectorFloat2_dynamic),
    _vertexVectorFloat3_dynamic(other._vertexVectorFloat3_dynamic),
    _vertexVectorFloat4_dynamic(other._vertexVectorFloat4_dynamic),
    _vertexVectorMat4_dynamic(other._vertexVectorMat4_dynamic),
    _indices(other._indices),
    _nOfIndices(other._nOfIndices),
    _mode(other._mode),
    _name(other._name)
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
        _vertexBuffersFloat2_static = move(other._vertexBuffersFloat2_static);
        _vertexBuffersFloat3_static = move(other._vertexBuffersFloat3_static);
        _vertexBuffersFloat4_static = move(other._vertexBuffersFloat4_static);
        _vertexBuffersMat4_static = move(other._vertexBuffersMat4_static);
        _vertexBuffersFloat2_dynamic = move(other._vertexBuffersFloat2_dynamic);
        _vertexBuffersFloat3_dynamic = move(other._vertexBuffersFloat3_dynamic);
        _vertexBuffersFloat4_dynamic = move(other._vertexBuffersFloat4_dynamic);
        _vertexBuffersMat4_dynamic = move(other._vertexBuffersMat4_dynamic);
        _indexBuffer = move(other._indexBuffer);
        _vertexVectorFloat2_static = other._vertexVectorFloat2_static;
        _vertexVectorFloat3_static = other._vertexVectorFloat3_static;
        _vertexVectorFloat4_static = other._vertexVectorFloat4_static;
        _vertexVectorMat4_static = other._vertexVectorMat4_static;
        _vertexVectorFloat2_dynamic = other._vertexVectorFloat2_dynamic;
        _vertexVectorFloat3_dynamic = other._vertexVectorFloat3_dynamic;
        _vertexVectorFloat4_dynamic = other._vertexVectorFloat4_dynamic;
        _vertexVectorMat4_dynamic = other._vertexVectorMat4_dynamic;
        _indices = other._indices;
        _nOfIndices = other._nOfIndices;
        _mode = other._mode;
        _name = other._name;
    }
    return (*this);
}

void VertexData::pushAttributeFloat2_static(const vector<VertexAttributeFloat2>& value)
{
    TRACE();
    _vertexVectorFloat2_static.push_back(VertexVector<VertexAttributeFloat2>(value.begin(), value.end()));
}

void VertexData::pushAttributeFloat3_static(const vector<VertexAttributeFloat3>& value)
{
    TRACE();
    _vertexVectorFloat3_static.push_back(VertexVector<VertexAttributeFloat3>(value.begin(), value.end()));
}

void VertexData::pushAttributeFloat4_static(const vector<VertexAttributeFloat4>& value)
{
    TRACE();
    _vertexVectorFloat4_static.push_back(VertexVector<VertexAttributeFloat4>(value.begin(), value.end()));
}

void VertexData::pushAttributeMat4_static(const vector<VertexAttributeMat4>& value)
{
    TRACE();
    _vertexVectorMat4_static.push_back(VertexVector<VertexAttributeMat4>(value.begin(), value.end()));
}

void VertexData::pushAttributeFloat2_dynamic(uint32 instanceDivisor, uint32 size, const vector<VertexAttributeFloat2>& value)
{
    TRACE();
    _vertexVectorFloat2_dynamic.push_back({ VertexVector<VertexAttributeFloat2>(value.begin(), value.end()), instanceDivisor, size });
}

void VertexData::pushAttributeFloat3_dynamic(uint32 instanceDivisor, uint32 size, const vector<VertexAttributeFloat3>& value)
{
    TRACE();
    _vertexVectorFloat3_dynamic.push_back({ VertexVector<VertexAttributeFloat3>(value.begin(), value.end()), instanceDivisor, size });
}

void VertexData::pushAttributeFloat4_dynamic(uint32 instanceDivisor, uint32 size, const vector<VertexAttributeFloat4>& value)
{
    TRACE();
    _vertexVectorFloat4_dynamic.push_back({ VertexVector<VertexAttributeFloat4>(value.begin(), value.end()), instanceDivisor, size });
}

void VertexData::pushAttributeMat4_dynamic(uint32 instanceDivisor, uint32 size, const vector<VertexAttributeMat4>& value)
{
    TRACE();
    _vertexVectorMat4_dynamic.push_back({ VertexVector<VertexAttributeMat4>(value.begin(), value.end()), instanceDivisor, size });
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

void VertexData::configureBufferFloat2_static()
{
    TRACE();
    for (const auto& vertexVector : _vertexVectorFloat2_static)
    {
        _vertexBuffersFloat2_static.push_back(VertexBuffer(vertexVector.data(), vertexVector.size()));
    }
}

void VertexData::configureBufferFloat3_static()
{
    TRACE();
    for (const auto& vertexVector : _vertexVectorFloat3_static)
    {
        _vertexBuffersFloat3_static.push_back(VertexBuffer(vertexVector.data(), vertexVector.size()));
    }
}

void VertexData::configureBufferFloat4_static()
{
    TRACE();
    for (const auto& vertexVector : _vertexVectorFloat4_static)
    {
        _vertexBuffersFloat4_static.push_back(VertexBuffer(vertexVector.data(), vertexVector.size()));
    }
}

void VertexData::configureBufferMat4_static()
{
    TRACE();
    for (const auto& vertexVector : _vertexVectorMat4_static)
    {
        _vertexBuffersMat4_static.push_back(VertexBuffer(vertexVector.data(), vertexVector.size()));
    }
}

void VertexData::configureBufferFloat2_dynamic()
{
    TRACE();
    for (const auto& vertexAttribParam : _vertexVectorFloat2_dynamic)
    {
        _vertexBuffersFloat2_dynamic.push_back(VertexBuffer(vertexAttribParam.size));
    }
}

void VertexData::configureBufferFloat3_dynamic()
{
    TRACE();
    for (const auto& vertexAttribParam : _vertexVectorFloat3_dynamic)
    {
        _vertexBuffersFloat3_dynamic.push_back(VertexBuffer(vertexAttribParam.size));
    }
}

void VertexData::configureBufferFloat4_dynamic()
{
    TRACE();
    for (const auto& vertexAttribParam : _vertexVectorFloat4_dynamic)
    {
        _vertexBuffersFloat4_dynamic.push_back(VertexBuffer(vertexAttribParam.size));
    }
}

void VertexData::configureBufferMat4_dynamic()
{
    TRACE();
    for (const auto& vertexAttribParam : _vertexVectorMat4_dynamic)
    {
        _vertexBuffersMat4_dynamic.push_back(VertexBuffer(vertexAttribParam.size));
    }
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

    ASSERT(_vertexBuffersFloat2_static.size() == _vertexVectorFloat2_static.size());
    ASSERT(_vertexBuffersFloat3_static.size() == _vertexVectorFloat3_static.size());
    ASSERT(_vertexBuffersFloat4_static.size() == _vertexVectorFloat4_static.size());
    ASSERT(_vertexBuffersMat4_static.size() == _vertexVectorMat4_static.size());
    ASSERT(_vertexBuffersFloat2_dynamic.size() == _vertexVectorFloat2_dynamic.size());
    ASSERT(_vertexBuffersFloat3_dynamic.size() == _vertexVectorFloat3_dynamic.size());
    ASSERT(_vertexBuffersFloat4_dynamic.size() == _vertexVectorFloat4_dynamic.size());
    ASSERT(_vertexBuffersMat4_dynamic.size() == _vertexVectorMat4_dynamic.size());

    this->bind();

    uint32 layoutIndex = 0;
    for (uint32 bufferIndex = 0; bufferIndex < _vertexVectorFloat2_static.size(); ++bufferIndex)
    {
        _vertexBuffersFloat2_static[bufferIndex].bind();
        _vertexArray.pushVertexAttribute(_vertexVectorFloat2_static[bufferIndex].layout(), layoutIndex++, 0);
        _vertexBuffersFloat2_static[bufferIndex].unbind();
        _vertexVectorFloat2_static[bufferIndex].clear();
    }
    for (uint32 bufferIndex = 0; bufferIndex < _vertexVectorFloat3_static.size(); ++bufferIndex)
    {
        _vertexBuffersFloat3_static[bufferIndex].bind();
        _vertexArray.pushVertexAttribute(_vertexVectorFloat3_static[bufferIndex].layout(), layoutIndex++, 0);
        _vertexBuffersFloat3_static[bufferIndex].unbind();
        _vertexVectorFloat3_static[bufferIndex].clear();
    }
    for (uint32 bufferIndex = 0; bufferIndex < _vertexVectorFloat4_static.size(); ++bufferIndex)
    {
        _vertexBuffersFloat4_static[bufferIndex].bind();
        _vertexArray.pushVertexAttribute(_vertexVectorFloat4_static[bufferIndex].layout(), layoutIndex++, 0);
        _vertexBuffersFloat4_static[bufferIndex].unbind();
        _vertexVectorFloat4_static[bufferIndex].clear();
    }
    for (uint32 bufferIndex = 0; bufferIndex < _vertexVectorMat4_static.size(); ++bufferIndex)
    {
        _vertexBuffersMat4_static[bufferIndex].bind();
        _vertexArray.pushVertexAttribute(_vertexVectorMat4_static[bufferIndex].layout(), layoutIndex++, 0);
        _vertexArray.pushVertexAttribute(_vertexVectorMat4_static[bufferIndex].layout(), layoutIndex++, 4 * sizeof(float));
        _vertexArray.pushVertexAttribute(_vertexVectorMat4_static[bufferIndex].layout(), layoutIndex++, 8 * sizeof(float));
        _vertexArray.pushVertexAttribute(_vertexVectorMat4_static[bufferIndex].layout(), layoutIndex++, 12 * sizeof(float));
        _vertexBuffersMat4_static[bufferIndex].unbind();
        _vertexVectorMat4_static[bufferIndex].clear();
    }

    for (uint32 bufferIndex = 0; bufferIndex < _vertexVectorFloat2_dynamic.size(); ++bufferIndex)
    {
        _vertexBuffersFloat2_dynamic[bufferIndex].bind();
        uint32 vertexAttrLayoutIndex = layoutIndex;
        _vertexArray.pushVertexAttribute(_vertexVectorFloat2_dynamic[bufferIndex].vertexVector.layout(), layoutIndex++, 0);
        GLCall(glVertexAttribDivisor(vertexAttrLayoutIndex, _vertexVectorFloat2_dynamic[bufferIndex].divisor));
        _vertexBuffersFloat2_dynamic[bufferIndex].unbind();
        _vertexVectorFloat2_dynamic[bufferIndex].vertexVector.clear();
    }
    for (uint32 bufferIndex = 0; bufferIndex < _vertexVectorFloat3_dynamic.size(); ++bufferIndex)
    {
        _vertexBuffersFloat3_dynamic[bufferIndex].bind();
        uint32 vertexAttrLayoutIndex = layoutIndex;
        _vertexArray.pushVertexAttribute(_vertexVectorFloat3_dynamic[bufferIndex].vertexVector.layout(), layoutIndex++, 0);
        GLCall(glVertexAttribDivisor(vertexAttrLayoutIndex, _vertexVectorFloat3_dynamic[bufferIndex].divisor));
        _vertexBuffersFloat3_dynamic[bufferIndex].unbind();
        _vertexVectorFloat3_dynamic[bufferIndex].vertexVector.clear();
    }
    for (uint32 bufferIndex = 0; bufferIndex < _vertexVectorFloat4_dynamic.size(); ++bufferIndex)
    {
        _vertexBuffersFloat4_dynamic[bufferIndex].bind();
        uint32 vertexAttrLayoutIndex = layoutIndex;
        _vertexArray.pushVertexAttribute(_vertexVectorFloat4_dynamic[bufferIndex].vertexVector.layout(), layoutIndex++, 0);
        GLCall(glVertexAttribDivisor(vertexAttrLayoutIndex, _vertexVectorFloat4_dynamic[bufferIndex].divisor));
        _vertexBuffersFloat4_dynamic[bufferIndex].unbind();
        _vertexVectorFloat4_dynamic[bufferIndex].vertexVector.clear();
    }
    for (uint32 bufferIndex = 0; bufferIndex < _vertexVectorMat4_dynamic.size(); ++bufferIndex)
    {
        _vertexBuffersMat4_dynamic[bufferIndex].bind();
        uint32 vertexAttrLayoutIndex = layoutIndex;
        _vertexArray.pushVertexAttribute(_vertexVectorMat4_dynamic[bufferIndex].vertexVector.layout(), layoutIndex++, 0);
        _vertexArray.pushVertexAttribute(_vertexVectorMat4_dynamic[bufferIndex].vertexVector.layout(), layoutIndex++, 4 * sizeof(float));
        _vertexArray.pushVertexAttribute(_vertexVectorMat4_dynamic[bufferIndex].vertexVector.layout(), layoutIndex++, 8 * sizeof(float));
        _vertexArray.pushVertexAttribute(_vertexVectorMat4_dynamic[bufferIndex].vertexVector.layout(), layoutIndex++, 12 * sizeof(float));
        GLCall(glVertexAttribDivisor(vertexAttrLayoutIndex, _vertexVectorMat4_dynamic[bufferIndex].divisor));
        _vertexBuffersMat4_dynamic[bufferIndex].unbind();
        _vertexVectorMat4_dynamic[bufferIndex].vertexVector.clear();
    }

    this->unbind();
}

void VertexData::updateBufferFloat2(uint32 layoutIndex, const void *data, uint32 size)
{
    TRACE();
    if (!(layoutIndex < _vertexBuffersFloat2_dynamic.size()))
        throw Exception("layoutIndex(" + to_string(layoutIndex) + ") is outside the range of the VBO Float2 vector in VertexData: " + _name);
    
    _vertexBuffersFloat2_dynamic[layoutIndex].bind();
    _vertexBuffersFloat2_dynamic[layoutIndex].update(data, size);
    _vertexBuffersFloat2_dynamic[layoutIndex].unbind();
}

void VertexData::updateBufferFloat3(uint32 layoutIndex, const void *data, uint32 size)
{
    TRACE();
    if (!(layoutIndex < _vertexBuffersFloat3_dynamic.size()))
        throw Exception("layoutIndex(" + to_string(layoutIndex) + ") is outside the range of the VBO Float3 vector in VertexData: " + _name);
    
    _vertexBuffersFloat3_dynamic[layoutIndex].bind();
    _vertexBuffersFloat3_dynamic[layoutIndex].update(data, size);
    _vertexBuffersFloat3_dynamic[layoutIndex].unbind();
}

void VertexData::updateBufferFloat4(uint32 layoutIndex, const void *data, uint32 size)
{
    TRACE();
    if (!(layoutIndex < _vertexBuffersFloat4_dynamic.size()))
        throw Exception("layoutIndex(" + to_string(layoutIndex) + ") is outside the range of the VBO Float3 vector in VertexData: " + _name);
    
    _vertexBuffersFloat4_dynamic[layoutIndex].bind();
    _vertexBuffersFloat4_dynamic[layoutIndex].update(data, size);
    _vertexBuffersFloat4_dynamic[layoutIndex].unbind();
}

void VertexData::updateBufferMat4(uint32 layoutIndex, const void *data, uint32 size)
{
    TRACE();
    if (!(layoutIndex < _vertexBuffersMat4_dynamic.size()))
        throw Exception("layoutIndex(" + to_string(layoutIndex) + ") is outside the range of the VBO Mat4 vector in VertexData: " + _name);
    
    _vertexBuffersMat4_dynamic[layoutIndex].bind();
    _vertexBuffersMat4_dynamic[layoutIndex].update(data, size);
    _vertexBuffersMat4_dynamic[layoutIndex].unbind();
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
    if (_indexBuffer.getID())
    {
        _indexBuffer.bind();
    }
}

void VertexData::unbind()
{
    TRACE();
    _vertexArray.unbind();
    if (_indexBuffer.getID())
    {
        _indexBuffer.unbind();
    }
}

}
