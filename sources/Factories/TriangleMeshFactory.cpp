#include "Factories/TriangleMeshFactory.hpp"
#include "Core/VertexData.hpp"
#include "Core/VertexVector.hpp"
#include "Debug/Trace.hpp"

namespace NAMESPACE
{

Mesh TriangleMeshFactory::createMesh(const Matrix<GLfloat, 4, 4> &transform)
{
    TRACE();
    Vector<GLfloat, 4> a{-0.5f, -0.5f, 0.0f, 1.0f};
    Vector<GLfloat, 4> b{-0.5f, 0.5f, 0.0f, 1.0f};
    Vector<GLfloat, 4> c{0.5f, -0.5f, 0.0f, 1.0f};

    a = a * transform;
    b = b * transform;
    c = c * transform;

    VertexData vertexData;
    PositionVertexAttribute positionA(a[0], a[1], a[2]);
    PositionVertexAttribute positionB(b[0], b[1], b[2]);
    PositionVertexAttribute positionC(c[0], c[1], c[2]);

    vertexData.pushPositionAttribute(positionA);
    vertexData.pushPositionAttribute(positionB);
    vertexData.pushPositionAttribute(positionC);
    vertexData.configurePositionAttribute();

    NormalVertexAttribute normalA(-1.0f, 0.0f, 0.0f);
    NormalVertexAttribute normalB(-1.0f, 1.0f, 0.0f);
    NormalVertexAttribute normalC(-1.0f, 0.0f, 1.0f);

    vertexData.pushNormalAttribute(normalA);
    vertexData.pushNormalAttribute(normalB);
    vertexData.pushNormalAttribute(normalC);
    vertexData.configureNormalAttribute();

    TextureVertexAttribute textureA(0.0f, 0.0f);
    TextureVertexAttribute textureB(0.0f, 1.0f);
    TextureVertexAttribute textureC(1.0f, 0.0f);

    vertexData.pushTextureAttribute(textureA);
    vertexData.pushTextureAttribute(textureB);
    vertexData.pushTextureAttribute(textureC);
    vertexData.configureTextureAttribute();

    vertexData.pushIndices({0, 1, 2});
    vertexData.configureIndices();

    vertexData.configureVAO();

    Mesh mesh;
    mesh.setVertexData(std::move(vertexData));
    return (mesh);
}

}
