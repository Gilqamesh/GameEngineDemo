#ifndef VERTEXDATA_HPP
# define VERTEXDATA_HPP

# include "Core/VertexArray.hpp"
# include "Core/VertexVector.hpp"
# include "VertexAttributes/VertexAttributeFloat2.hpp"
# include "VertexAttributes/VertexAttributeFloat3.hpp"
# include "VertexAttributes/VertexAttributeMat4.hpp"

namespace GilqEngine
{

class VertexData
{

template <typename VertAttr>
struct VertexAttribParams
{
    VertexVector<VertAttr> vertexVector;
    uint32                 divisor; // for intanced drawing 'glVertexAttribDivisor
};

VertexArray                             _vertexArray;
vector<VertexBuffer>                    _vertexBuffersFloat2_static;
vector<VertexBuffer>                    _vertexBuffersFloat3_static;
vector<VertexBuffer>                    _vertexBuffersMat4_static;
vector<VertexBuffer>                    _vertexBuffersFloat2_dynamic;
vector<VertexBuffer>                    _vertexBuffersFloat3_dynamic;
vector<VertexBuffer>                    _vertexBuffersMat4_dynamic;

IndexBuffer                             _indexBuffer;

vector<VertexVector<VertexAttributeFloat2>> _vertexVectorFloat2_static;
vector<VertexVector<VertexAttributeFloat3>> _vertexVectorFloat3_static;
vector<VertexVector<VertexAttributeMat4>>   _vertexVectorMat4_static;
// For instancing, dynamic vertex buffers
vector<VertexAttribParams<VertexAttributeFloat2>> _vertexVectorFloat2_dynamic;
vector<VertexAttribParams<VertexAttributeFloat3>> _vertexVectorFloat3_dynamic;
vector<VertexAttribParams<VertexAttributeMat4>>   _vertexVectorMat4_dynamic;

vector<unsigned int>                        _indices;

uint32 _nOfIndices;

GLenum _mode; // what primitive should be used for the draw call (I believe for shape assembly?)

public:
    VertexData();
    ~VertexData();

    // to avoid destruction of OpenGL context objects: VertexArray, VertexBuffer, IndexBuffer
    VertexData(const VertexData &other) = delete;
    VertexData &operator=(const VertexData &other) = delete;

    VertexData(VertexData &&other);
    VertexData &operator=(VertexData &&other);

    void pushAttributeFloat2_static(const vector<VertexAttributeFloat2>& value);
    void pushAttributeFloat3_static(const vector<VertexAttributeFloat3>& value);
    void pushAttributeMat4_static(const vector<VertexAttributeMat4>& value);
    void pushAttributeFloat2_dynamic(const vector<VertexAttributeFloat2>& value, uint32 instanceDivisor);
    void pushAttributeFloat3_dynamic(const vector<VertexAttributeFloat3>& value, uint32 instanceDivisor);
    void pushAttributeMat4_dynamic(const vector<VertexAttributeMat4>& value, uint32 instanceDivisor);
    void pushIndices(const vector<unsigned int> &indices);
    void pushIndex(unsigned int index);

    /*
     * These methods release their associated memory from the VertexData
     * since OpenGL holds the memory for us already
     */
    void configureBufferFloat2_static();
    void configureBufferFloat3_static();
    void configureBufferMat4_static();
    void configureBufferFloat2_dynamic();
    void configureBufferFloat3_dynamic();
    void configureBufferMat4_dynamic();
    void configureIndices();

    inline GLuint getCountOfIndeces() const { return (_nOfIndices); }

    /*
     * Modes: GL_POINTS, GL_LINE_STRIP, GL_LINE_LOOP, GL_LINES, GL_LINE_STRIP_ADJACENCY,
     *        GL_LINES_ADJACENCY, GL_TRIANGLE_STRIP, GL_TRIANGLE_FAN, GL_TRIANGLES,
     *        GL_TRIANGLE_STRIP_ADJACENCY, GL_TRIANGLES_ADJACENCY, GL_PATCHES
     */
    inline void setMode(GLenum mode) { _mode = mode; }
    inline GLenum getMode() const { return (_mode); }

    /*
     * Call it after all VBOs and the IBO are configured
     */
    void configureVAO();

    /*
     * Caller's responsibility:
     *      - Only call these functions if the specific Buffer Object is dynamically set
     */
    void updateBufferFloat2(uint32 layoutIndex, const void *data, uint32 size);
    void updateBufferFloat3(uint32 layoutIndex, const void *data, uint32 size);
    void updateBufferMat4(uint32 layoutIndex, const void *data, uint32 size);
    void updateIBO(const void *data, GLuint count);

    void bind();
    void unbind();
};

}

#endif
