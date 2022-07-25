#include "Factories/LineMeshFactory2D.hpp"
#include "Core/VertexData.hpp"
#include "Debug/Trace.hpp"

namespace GilqEngine
{

Mesh LineMeshFactory2D::createMesh()
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
    mesh.setVertexData(move(vertexData));
    mesh.setDrawMode(GL_LINES);

    return (mesh);
}

}
