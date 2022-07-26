#include "Factories/CircleMeshFactory2DTexture.hpp"
#include "Core/VertexData.hpp"
#include "Debug/Trace.hpp"

namespace GilqEngine
{

Mesh CircleMeshFactory2DTexture::createMesh()
{
    TRACE();

    VertexData vertexData;
    PositionVertexAttribute2D positionA(-0.5f, -0.5f); // bottom left
    PositionVertexAttribute2D positionB(-0.5f, 0.5f); // top left
    PositionVertexAttribute2D positionC(0.5f, -0.5f); // bottom right
    PositionVertexAttribute2D positionD(0.5f, 0.5f); // top right

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
    mesh.setVertexData(move(vertexData));
    mesh.setDrawMode(GL_TRIANGLES);
    
    return (mesh);
}

}