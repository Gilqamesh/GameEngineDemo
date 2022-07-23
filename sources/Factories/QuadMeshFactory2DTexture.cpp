#include "Factories/QuadMeshFactory2DTexture.hpp"
#include "Core/VertexData.hpp"
#include "Debug/Trace.hpp"

namespace GilqEngine
{

Mesh QuadMeshFactory2DTexture::createMesh()
{
    TRACE();

    VertexData vertexData;
    PositionVertexAttribute2D positionA(0.0f, 0.0f); // bottom left
    PositionVertexAttribute2D positionB(0.0f, 1.0f); // top left
    PositionVertexAttribute2D positionC(1.0f, 0.0f); // bottom right
    PositionVertexAttribute2D positionD(1.0f, 1.0f); // top right

    vertexData.pushPositionAttribute2D(positionA);
    vertexData.pushPositionAttribute2D(positionB);
    vertexData.pushPositionAttribute2D(positionC);
    vertexData.pushPositionAttribute2D(positionD);
    vertexData.configurePositionAttribute();

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
