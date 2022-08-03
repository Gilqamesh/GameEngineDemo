#include "MeshPrimitives/CircleMeshPrimitive2D.hpp"
#include "Core/VertexData.hpp"
#include "Debug/Trace.hpp"

namespace GilqEngine
{

Mesh CircleMeshPrimitive2D::createMesh()
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

    vertexData.pushIndices({
        0, 1, 2,
        1, 2, 3
    });
    vertexData.configureIndices();

    vertexData.configureVAO();

    Mesh mesh;
    vertexData.setMode(GL_TRIANGLES);
    mesh.setVertexData(move(vertexData));
    
    return (mesh);
}

}
