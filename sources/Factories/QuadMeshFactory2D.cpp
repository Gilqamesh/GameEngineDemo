#include "Factories/QuadMeshFactory2D.hpp"
#include "Core/VertexData.hpp"
#include "Debug/Trace.hpp"

namespace GilqEngine
{

Mesh QuadMeshFactory2D::createMesh()
{
    TRACE();

    VertexData vertexData;
    PositionVertexAttribute2D positionA(0.0f, 0.0f); // top left
    PositionVertexAttribute2D positionB(0.0f, 1.0f); // bottom left
    PositionVertexAttribute2D positionC(1.0f, 0.0f); // top right
    PositionVertexAttribute2D positionD(1.0f, 1.0f); // bottom right

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
    mesh.setVertexData(move(vertexData));
    return (mesh);
}

}
