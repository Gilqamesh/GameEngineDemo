#include "MeshPrimitives/BoundingRectangleMeshPrimitive.hpp"
#include "VertexAttributes/VertexAttributeFloat2.hpp"
#include "VertexAttributes/VertexAttributeFloat3.hpp"
#include "Core/VertexData.hpp"

namespace GilqEngine
{

Mesh BoundingRectangleMeshPrimitive::createMesh()
{
    TRACE();

    VertexData vertexData;
    float w = 0.001f;
    vector<VertexAttributeFloat3> positions = {
        {-0.5f, 0.5f, 0.0f}, {0.5f, 0.5f, 0.0f}, {-0.5f, 0.5f - w, 0.0f},
        {0.5f, 0.5f - w, 0.0f}, {-0.5f + w, 0.5f - w, 0.0f}, {-0.5f, -0.5f, 0.0f},
        {-0.5f + w, -0.5f, 0.0f}, {0.5f - w, 0.5f - w, 0.0f}, {0.5f - w, -0.5f, 0.0f},
        {0.5f, -0.5f, 0.0f}, {-0.5f + w, -0.5f + w, 0.0f}, {0.5f - w, -0.5f + w, 0.0f}
    };
    // These arent checked
    vector<VertexAttributeFloat3> normals = {
        {0.0f, 0.0f, 1.0f}, {0.0f, 0.0f, 1.0f}, {0.0f, 0.0f, 1.0f},
        {0.0f, 0.0f, 1.0f}, {0.0f, 0.0f, 1.0f}, {0.0f, 0.0f, 1.0f},
        {0.0f, 0.0f, 1.0f}, {0.0f, 0.0f, 1.0f}, {0.0f, 0.0f, 1.0f},
        {0.0f, 0.0f, 1.0f}, {0.0f, 0.0f, 1.0f}, {0.0f, 0.0f, 1.0f}
    };
    // These arent checked, so use unicolor texture
    vector<VertexAttributeFloat2> textures = {
        {0.0f, 0.0f}, {0.0f, 1.0f}, {1.0f, 0.0f}, {1.0f, 1.0f},
        {0.0f, 0.0f}, {0.0f, 1.0f}, {1.0f, 0.0f}, {1.0f, 1.0f},
        {0.0f, 0.0f}, {0.0f, 1.0f}, {1.0f, 0.0f}, {1.0f, 1.0f},
        {0.0f, 0.0f}, {0.0f, 1.0f}, {1.0f, 0.0f}, {1.0f, 1.0f},
    };

    vertexData.pushAttributeFloat3_static(positions);
    vertexData.pushAttributeFloat3_static(normals);
    vertexData.pushAttributeFloat2_static(textures);
    vertexData.configureBufferFloat3_static();
    vertexData.configureBufferFloat2_static();

    vertexData.pushIndices({
        0, 1, 2, 1, 2, 3,
        2, 4, 6, 2, 6, 5,
        3, 9, 7, 9, 7, 8,
        6, 11, 8, 6, 11, 10
    });
    vertexData.configureIndices();

    vertexData.configureVAO();

    Mesh mesh;
    vertexData.setMode(GL_TRIANGLES);
    mesh.setVertexData(move(vertexData));

    return (mesh);
}

}
