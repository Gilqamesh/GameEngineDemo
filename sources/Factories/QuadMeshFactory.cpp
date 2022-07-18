#include "Factories/QuadMeshFactory.hpp"
#include "Core/VertexData.hpp"
#include "Debug/Trace.hpp"

namespace NAMESPACE
{

Mesh QuadMeshFactory::createMesh()
{
    TRACE();

    VertexData vertexData;
    PositionVertexAttribute positionA(-0.5f, -0.5f, 0.5f);  // bottom left
    PositionVertexAttribute positionB(-0.5f, 0.5f, 0.5f);   // top left
    PositionVertexAttribute positionC(0.5f, -0.5f, 0.5f);   // bottom right
    PositionVertexAttribute positionD(0.5f, 0.5f, 0.5f);    // top right

    vertexData.pushPositionAttribute(positionA);
    vertexData.pushPositionAttribute(positionB);
    vertexData.pushPositionAttribute(positionC);
    vertexData.pushPositionAttribute(positionD);
    vertexData.configurePositionAttribute();

    NormalVertexAttribute normalA(0.0f, 0.0f, 1.0f);
    NormalVertexAttribute normalB(0.0f, 0.0f, 1.0f);
    NormalVertexAttribute normalC(0.0f, 0.0f, 1.0f);
    NormalVertexAttribute normalD(0.0f, 0.0f, 1.0f);

    vertexData.pushNormalAttribute(normalA);
    vertexData.pushNormalAttribute(normalB);
    vertexData.pushNormalAttribute(normalC);
    vertexData.pushNormalAttribute(normalD);
    vertexData.configureNormalAttribute();

    TextureVertexAttribute textureA(0.0f, 0.0f);
    TextureVertexAttribute textureB(0.0f, 1.0f);
    TextureVertexAttribute textureC(1.0f, 0.0f);
    TextureVertexAttribute textureD(1.0f, 1.0f);

    vertexData.pushTextureAttribute(textureA);
    vertexData.pushTextureAttribute(textureB);
    vertexData.pushTextureAttribute(textureC);
    vertexData.pushTextureAttribute(textureD);
    vertexData.configureTextureAttribute();

    vertexData.pushIndices({
        0, 1, 2,
        1, 2, 3
    });
    vertexData.configureIndices();

    vertexData.configureVAO();

    Mesh mesh;
    mesh.setVertexData(std::move(vertexData));
    return (mesh);
}

}
