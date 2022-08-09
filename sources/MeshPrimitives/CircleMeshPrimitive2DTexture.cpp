#include "MeshPrimitives/CircleMeshPrimitive2DTexture.hpp"
#include "VertexAttributes/VertexAttributeFloat2.hpp"
#include "Core/VertexData.hpp"
#include "Debug/Trace.hpp"

namespace GilqEngine
{

Mesh CircleMeshPrimitive2DTexture::createMesh()
{
    TRACE();

    VertexData vertexData;
    vector<VertexAttributeFloat2> position = {
        {-0.5f, -0.5f}, {-0.5f, 0.5f}, {0.5f, -0.5f}, {0.5f, 0.5f}
    };

    vector<VertexAttributeFloat2> texture = {
        {0.0f, 0.0f}, {0.0f, 1.0f}, {1.0f, 0.0f}, {1.0f, 1.0f}
    };

    vertexData.pushAttributeFloat2_static(position);
    vertexData.pushAttributeFloat2_static(texture);
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
