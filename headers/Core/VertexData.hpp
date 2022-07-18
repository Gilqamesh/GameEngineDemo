#ifndef VERTEXDATA_HPP
# define VERTEXDATA_HPP

# include "Core/VertexLayout.hpp"
# include "Core/VertexArray.hpp"
# include "Core/VertexBuffer.hpp"
# include "Core/IndexBuffer.hpp"
# include "Core/VertexVector.hpp"
# include "VertexAttributes/PositionVertexAttribute.hpp"
# include "VertexAttributes/NormalVertexAttribute.hpp"
# include "VertexAttributes/TextureVertexAttribute.hpp"

namespace NAMESPACE
{

class VertexData
{
VertexArray                             _vertexArray;
VertexBuffer                            _vertexPositionBuffer;
VertexBuffer                            _vertexNormalBuffer;
VertexBuffer                            _vertexTextureBuffer;
IndexBuffer                             _indexBuffer;

VertexVector<PositionVertexAttribute>   _vertexVectorPosition;
VertexVector<NormalVertexAttribute>     _vertexVectorNormal;
VertexVector<TextureVertexAttribute>    _vertexVectorTexture;
std::vector<unsigned int>               _indices;
public:
    VertexData();
    ~VertexData();

    // to avoid destruction of OpenGL context objects: VertexArray, VertexBuffer, IndexBuffer
    VertexData(const VertexData &other) = delete;
    VertexData &operator=(const VertexData &other) = delete;

    VertexData(VertexData &&other);
    VertexData &operator=(VertexData &&other);

    void pushPositionAttribute(const PositionVertexAttribute &data);
    void pushNormalAttribute(const NormalVertexAttribute &data);
    void pushTextureAttribute(const TextureVertexAttribute &data);
    void pushIndices(const std::vector<unsigned int> &indices);
    void pushIndex(unsigned int index);
    void configurePositionAttribute();
    void configureNormalAttribute();
    void configureTextureAttribute();
    void configureIndices();

    inline GLuint getCountOfIndeces() const { return (_indexBuffer.getCount()); }
    inline VertexBuffer &getPositionBuffer() { return (_vertexPositionBuffer); }
    inline VertexBuffer &getNormalBuffer() { return (_vertexNormalBuffer); }
    inline VertexBuffer &getTextureBuffer() { return (_vertexTextureBuffer); }
    inline IndexBuffer &getIndexBuffer() { return (_indexBuffer); }
    inline const VertexVector<PositionVertexAttribute> &getVertexVectorPosition() const { return (_vertexVectorPosition); }

    /*
     * Call it after all VBOs and the IBO are configured
     */
    void configureVAO();

    /*
     * Caller's responsibility:
     *      - Only call these functions if the specific Buffer Object is dynamically set
     */
    void updateVBO_position(VertexVector<PositionVertexAttribute> &data);
    void updateVBO_normal(VertexVector<NormalVertexAttribute> &data);
    void updateVBO_texture(VertexVector<TextureVertexAttribute> &data);
    void updateIBO(const void *data, GLuint count);

    void bind();
    void unbind();
};

}

#endif
