#include "MeshPrimitives/LineMeshPrimitive2D.hpp"
#include "VertexAttributes/VertexAttributeFloat2.hpp"
#include "Core/VertexData.hpp"
#include "Debug/Trace.hpp"

namespace GilqEngine
{

Mesh LineMeshPrimitive2D::createMesh()
{
    TRACE();

    VertexData vertexData("LineMeshPrimitive2D");
    vector<VertexAttributeFloat2> position = {
        {0.0f, 0.0f}, {1.0f / (float)sqrt(2), -1.0f / (float)sqrt(2)}
    };

    vertexData.pushAttributeFloat2_dynamic(0, position.size(), position);
    vertexData.configureBufferFloat2_dynamic();

    vertexData.pushIndices({0, 1});
    vertexData.configureIndices();

    vertexData.configureVAO();

    Mesh mesh;
    vertexData.setMode(GL_LINES);
    mesh.setVertexData(move(vertexData));

    return (mesh);
}

}
