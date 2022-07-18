#include "Factories/TriangleMeshFactory.hpp"
#include "Core/VertexData.hpp"
#include "Debug/Trace.hpp"

namespace NAMESPACE
{

Mesh TriangleMeshFactory::createMesh()
{
    TRACE();

    VertexData vertexData;
    PositionVertexAttribute positionA(-0.5f, -0.5f, 0.5f);
    PositionVertexAttribute positionB(-0.5f, 0.5f, 0.5f);
    PositionVertexAttribute positionC(0.5f, -0.5f, 0.5f);

    vertexData.pushPositionAttribute(positionA);
    vertexData.pushPositionAttribute(positionB);
    vertexData.pushPositionAttribute(positionC);
    vertexData.configurePositionAttribute();

    NormalVertexAttribute normalA(0.0f, 0.0f, 1.0f);
    NormalVertexAttribute normalB(0.0f, 0.0f, 1.0f);
    NormalVertexAttribute normalC(0.0f, 0.0f, 1.0f);

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
