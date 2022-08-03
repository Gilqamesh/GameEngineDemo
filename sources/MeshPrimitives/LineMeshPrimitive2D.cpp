#include "MeshPrimitives/LineMeshPrimitive2D.hpp"
#include "Core/VertexData.hpp"
#include "Debug/Trace.hpp"

namespace GilqEngine
{

Mesh LineMeshPrimitive2D::createMesh()
{
    TRACE();

    VertexData vertexData;
    PositionVertexAttribute2D positionA(0.0f, 0.0f);
    PositionVertexAttribute2D positionB(1.0f / (float)sqrt(2), -1.0f / (float)sqrt(2));

    vertexData.pushPositionAttribute2D(positionA);
    vertexData.pushPositionAttribute2D(positionB);
    vertexData.configurePositionAttributeDynamic();

    vertexData.pushIndices({0, 1});
    vertexData.configureIndices();

    vertexData.configureVAO();

    Mesh mesh;
    vertexData.setMode(GL_LINES);
    mesh.setVertexData(move(vertexData));

    return (mesh);
}

}
