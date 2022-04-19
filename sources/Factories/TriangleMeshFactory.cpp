#include "Factories/TriangleMeshFactory.hpp"
#include "Core/VertexData.hpp"
#include "Core/VertexVector.hpp"
#include "Debug/Trace.hpp"

namespace NAMESPACE
{

Mesh TriangleMeshFactory::createMesh(const Matrix<GLfloat, 4, 4> &transform)
{
    TRACE();
    Vector<GLfloat, 4> a{0.0f, 0.0f, 0.0f, 1.0f};
    Vector<GLfloat, 4> b{0.0f, 1.0f, 0.0f, 1.0f};
    Vector<GLfloat, 4> c{0.0f, 0.0f, 1.0f, 1.0f};

    a = a * transform;
    b = b * transform;
    c = c * transform;

    PositionVertexAttribute positionA(a[0], a[1], a[2]);
    PositionVertexAttribute positionB(b[0], b[1], b[2]);
    PositionVertexAttribute positionC(c[0], c[1], c[2]);

    VertexVector<PositionVertexAttribute> positionVertexVector;
    positionVertexVector.push_back(positionA);
    positionVertexVector.push_back(positionB);
    positionVertexVector.push_back(positionC);

    VertexBuffer positionBuffer(positionVertexVector.getData(), positionVertexVector.getSize());

    NormalVertexAttribute normalA(-1.0f, 0.0f, 0.0f);
    NormalVertexAttribute normalB(-1.0f, 1.0f, 0.0f);
    NormalVertexAttribute normalC(-1.0f, 0.0f, 1.0f);

    VertexVector<NormalVertexAttribute> normalVertexVector;
    normalVertexVector.push_back(normalA);
    normalVertexVector.push_back(normalB);
    normalVertexVector.push_back(normalC);

    VertexBuffer normalBuffer(normalVertexVector.getData(), normalVertexVector.getSize());

    TextureVertexAttribute textureA(0.0f, 0.0f);
    TextureVertexAttribute textureB(0.0f, 1.0f);
    TextureVertexAttribute textureC(1.0f, 0.0f);

    VertexVector<TextureVertexAttribute> textureVertexVector;
    textureVertexVector.push_back(textureA);
    textureVertexVector.push_back(textureB);
    textureVertexVector.push_back(textureC);

    VertexBuffer textureBuffer(textureVertexVector.getData(), textureVertexVector.getSize());

    std::vector<GLuint> indices{0, 1, 2};

    IndexBuffer indexBuffer(indices.data(), indices.size());

    VertexData vertexData;
    vertexData.setVBO_position(std::move(positionBuffer));
    vertexData.setVBO_normal(std::move(normalBuffer));
    vertexData.setVBO_texture(std::move(textureBuffer));
    vertexData.setIBO(std::move(indexBuffer));
    vertexData.configureVAO();

    Mesh mesh;
    mesh.setVertexData(std::move(vertexData));
    return (mesh);
}

}
