#include "Factories/QuadMeshFactory3D.hpp"
#include "Core/VertexData.hpp"
#include "Debug/Trace.hpp"

namespace GilqEngine
{

Mesh QuadMeshFactory3D::createMesh()
{
    TRACE();

    VertexData vertexData;
    PositionVertexAttribute3D positionA(-0.5f, -0.5f, 0.0f);  // bottom left
    PositionVertexAttribute3D positionB(-0.5f, 0.5f, 0.0f);   // top left
    PositionVertexAttribute3D positionC(0.5f, -0.5f, 0.0f);   // bottom right
    PositionVertexAttribute3D positionD(0.5f, 0.5f, 0.0f);    // top right

    vertexData.pushPositionAttribute3D(positionA);
    vertexData.pushPositionAttribute3D(positionB);
    vertexData.pushPositionAttribute3D(positionC);
    vertexData.pushPositionAttribute3D(positionD);
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
