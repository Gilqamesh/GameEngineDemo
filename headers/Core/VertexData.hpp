#ifndef VERTEXDATA_HPP
# define VERTEXDATA_HPP

# include "Core/VertexLayout.hpp"
# include "Core/VertexArray.hpp"
# include "Core/VertexBuffer.hpp"
# include "Core/IndexBuffer.hpp"
# include "Core/VertexVector.hpp"
# include "VertexAttributes/PositionVertexAttribute2D.hpp"
# include "VertexAttributes/PositionVertexAttribute3D.hpp"
# include "VertexAttributes/NormalVertexAttribute.hpp"
# include "VertexAttributes/TextureVertexAttribute.hpp"

namespace GilqEngine
{

class VertexData
{
VertexArray                             _vertexArray;
VertexBuffer                            _vertexPositionBuffer;
VertexBuffer                            _vertexNormalBuffer;
VertexBuffer                            _vertexTextureBuffer;

IndexBuffer                             _indexBuffer;

VertexVector<PositionVertexAttribute2D> _vertexVectorPosition2D;
VertexVector<PositionVertexAttribute3D> _vertexVectorPosition3D;
VertexVector<NormalVertexAttribute>     _vertexVectorNormal;
VertexVector<TextureVertexAttribute>    _vertexVectorTexture;
vector<unsigned int>                    _indices;

uint32 _nOfIndices;
public:
    VertexData();
    ~VertexData();

    // to avoid destruction of OpenGL context objects: VertexArray, VertexBuffer, IndexBuffer
    VertexData(const VertexData &other) = delete;
    VertexData &operator=(const VertexData &other) = delete;

    VertexData(VertexData &&other);
    VertexData &operator=(VertexData &&other);

    void pushPositionAttribute2D(const PositionVertexAttribute2D &data);
    void pushPositionAttribute3D(const PositionVertexAttribute3D &data);
    void pushNormalAttribute(const NormalVertexAttribute &data);
    void pushTextureAttribute(const TextureVertexAttribute &data);
    void pushIndices(const vector<unsigned int> &indices);
    void pushIndex(unsigned int index);

    /*
     * These methods release their associated memory from the VertexData
     * since OpenGL holds the memory for us already
     */
    void configurePositionAttribute();
    void configurePositionAttributeDynamic(); // Creates Dynamic VertexBuffer so later it can be updated
    void configureNormalAttribute();
    void configureTextureAttribute();
    void configureIndices();

    inline GLuint getCountOfIndeces() const { return (_nOfIndices); }
    inline VertexBuffer &getPositionBuffer() { return (_vertexPositionBuffer); }
    inline VertexBuffer &getNormalBuffer() { return (_vertexNormalBuffer); }
    inline VertexBuffer &getTextureBuffer() { return (_vertexTextureBuffer); }
    inline IndexBuffer &getIndexBuffer() { return (_indexBuffer); }

    /*
     * Call it after all VBOs and the IBO are configured
     */
    void configureVAO();

    /*
     * Caller's responsibility:
     *      - Only call these functions if the specific Buffer Object is dynamically set
     */
    void updateVBO_position2D(const void *data, GLuint size);
    void updateVBO_position3D(const void *data, GLuint size);
    void updateVBO_normal(const void *data, GLuint size);
    void updateVBO_texture(const void *data, GLuint size);
    void updateIBO(const void *data, GLuint count);

    void bind();
    void unbind();
};

}

#endif
