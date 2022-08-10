#include "MeshPrimitives/CircleMeshPrimitive2D.hpp"
#include "VertexAttributes/VertexAttributeFloat2.hpp"
#include "Core/VertexData.hpp"
#include "Debug/Trace.hpp"

namespace GilqEngine
{

Mesh CircleMeshPrimitive2D::createMesh()
{
    TRACE();

    VertexData vertexData("CircleMeshPrimitive2D");
    vector<VertexAttributeFloat2> position = {
        {-0.5f, -0.5f}, {-0.5f, 0.5f}, {0.5f, -0.5f}, {0.5f, 0.5f}
    };

    vertexData.pushAttributeFloat2_static(position);
    vertexData.configureBufferFloat2_static();

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
