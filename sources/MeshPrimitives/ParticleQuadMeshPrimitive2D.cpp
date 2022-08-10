#include "MeshPrimitives/ParticleQuadMeshPrimitive2D.hpp"
#include "VertexAttributes/VertexAttributeFloat2.hpp"
#include "VertexAttributes/VertexAttributeFloat4.hpp"
#include "Core/VertexData.hpp"
#include "Debug/Trace.hpp"

namespace GilqEngine
{

Mesh ParticleQuadMeshPrimitive2D::createMesh()
{
    TRACE();

    VertexData vertexData("ParticleQuadMeshPrimitive2D");
    vector<VertexAttributeFloat2> billboard = {
        {0.0f, 0.0f}, {0.0f, 1.0f}, {1.0f, 0.0f}, {1.0f, 1.0f}
    };
    vertexData.pushAttributeFloat2_static(billboard);

    uint32 maxNumberOfParticles = 1000;
    // position
    vertexData.pushAttributeFloat2_dynamic(1, maxNumberOfParticles);
    // size
    vertexData.pushAttributeFloat2_dynamic(1, maxNumberOfParticles);
    // color
    vertexData.pushAttributeFloat4_dynamic(1, maxNumberOfParticles);

    vertexData.configureBufferFloat2_static();
    vertexData.configureBufferFloat2_dynamic();
    vertexData.configureBufferFloat4_dynamic();

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
