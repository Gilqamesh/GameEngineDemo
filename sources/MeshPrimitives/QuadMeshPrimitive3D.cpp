#include "MeshPrimitives/QuadMeshPrimitive3D.hpp"
#include "VertexAttributes/VertexAttributeFloat2.hpp"
#include "VertexAttributes/VertexAttributeFloat3.hpp"
#include "Core/VertexData.hpp"
#include "Debug/Trace.hpp"

namespace GilqEngine
{

Mesh QuadMeshPrimitive3D::createMesh()
{
    TRACE();

    VertexData vertexData;
    vector<VertexAttributeFloat3> position = {
        { -0.5f, -0.5f, 0.0f },
        { -0.5f, 0.5f, 0.0f },
        { 0.5f, -0.5f, 0.0f },
        { 0.5f, 0.5f, 0.0f }
    };
    vertexData.pushAttributeFloat3_static(position);

    vector<VertexAttributeFloat3> normal = {
        {0.0f, 0.0f, 1.0f},
        {0.0f, 0.0f, 1.0f},
        {0.0f, 0.0f, 1.0f},
        {0.0f, 0.0f, 1.0f}
    };
    vertexData.pushAttributeFloat3_static(normal);

    vector<VertexAttributeFloat2> texture = {
        {0.0f, 0.0f}, {0.0f, 1.0f}, {1.0f, 0.0f}, {1.0f, 1.0f}
    };
    vertexData.pushAttributeFloat2_static(texture);

    vertexData.configureBufferFloat2_static();
    vertexData.configureBufferFloat3_static();

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
