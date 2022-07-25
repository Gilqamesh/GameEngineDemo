#include "Factories/TriangleMeshFactory3D.hpp"
#include "Core/VertexData.hpp"
#include "Debug/Trace.hpp"

namespace GilqEngine
{

Mesh TriangleMeshFactory3D::createMesh()
{
    TRACE();

    VertexData vertexData;
    PositionVertexAttribute3D positionA(-0.5f, -0.5f, 0.5f);
    PositionVertexAttribute3D positionB(-0.5f, 0.5f, 0.5f);
    PositionVertexAttribute3D positionC(0.5f, -0.5f, 0.5f);

    vertexData.pushPositionAttribute3D(positionA);
    vertexData.pushPositionAttribute3D(positionB);
    vertexData.pushPositionAttribute3D(positionC);
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
    mesh.setVertexData(move(vertexData));
    mesh.setDrawMode(GL_TRIANGLES);
    
    return (mesh);
}

}
