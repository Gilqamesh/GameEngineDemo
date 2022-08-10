#include "MeshPrimitives/CubeMeshPrimitive.hpp"
#include "VertexAttributes/VertexAttributeFloat3.hpp"
#include "Core/VertexData.hpp"
#include "Debug/Trace.hpp"

namespace GilqEngine
{

Mesh CubeMeshPrimitive::createMesh()
{
    TRACE();
    vector<Vector<float, 4>>         preVertices{
        {-0.5f, -0.5f, -0.5f, 1.0f},
        {0.5f, -0.5f, -0.5f, 1.0f},
        {-0.5f, -0.5f, 0.5f, 1.0f},
        {0.5f, -0.5f, 0.5f, 1.0f},
        {-0.5f, 0.5f, -0.5f, 1.0f},
        {0.5f, 0.5f, -0.5f, 1.0f},
        {-0.5f, 0.5f, 0.5f, 1.0f},
        {0.5f, 0.5f, 0.5f, 1.0f}
    };
    vector<Vector<float, 4>>         preNormals{
        {0.0f, -1.0f, 0.0f, 1.0f},
        {0.0f, 1.0f, 0.0f, 1.0f},
        {1.0f, 0.0f, 0.0f, 1.0f},
        {-1.0f, 0.0f, 0.0f, 1.0f},
        {0.0f, 0.0f, 1.0f, 1.0f},
        {0.0f, 0.0f, -1.0f, 1.0f}
    };
    vector<Vector<float, 2>>         t{
        {0.0f, 0.0f},
        {1.0f, 0.0f},
        {0.0f, 1.0f},
        {1.0f, 1.0f}
    };
    vector<unsigned int> indices{
        0, 1, 2,
        1, 2, 3,
        4, 5, 6,
        5, 6, 7,

        0, 1, 4,
        1, 4, 5,
        2, 3, 6,
        3, 6, 7,

        1, 3, 5,
        3, 5, 7,
        0, 2, 4,
        2, 4, 6
    };

    vector<Vector<float, 3>>         v;
    vector<Vector<float, 3>>         n;
    VertexData vertexData("CubeMeshPrimitive");
    for (auto &vertex : preVertices)
    {
        v.push_back({vertex[0], vertex[1], vertex[2]});
    }
    for (auto &normal : preNormals)
    {
        n.push_back({normal[0], normal[1], normal[2]});
    }

    vector<VertexAttributeFloat3> positions;
    for (unsigned int i = 0; i < indices.size(); ++i)
    {
        positions.push_back(v[indices[i]]);
        vertexData.pushIndices({i});
    }
    vertexData.pushAttributeFloat3_static(positions);

    vector<VertexAttributeFloat3>      normals{
        n[0], n[0], n[0],
        n[0], n[0], n[0],
        n[1], n[1], n[1],
        n[1], n[1], n[1],

        n[5], n[5], n[5],
        n[5], n[5], n[5],
        n[4], n[4], n[4],
        n[4], n[4], n[4],

        n[2], n[2], n[2],
        n[2], n[2], n[2],
        n[3], n[3], n[3],
        n[3], n[3], n[3]
    };
    vertexData.pushAttributeFloat3_static(normals);

    vector<VertexAttributeFloat2> textures{
        t[0], t[1], t[2],
        t[1], t[2], t[3],
        t[1], t[0], t[3],
        t[0], t[3], t[2],

        t[0], t[1], t[2],
        t[1], t[2], t[3],
        t[1], t[0], t[3],
        t[0], t[3], t[2],

        t[0], t[1], t[2],
        t[1], t[2], t[3],
        t[1], t[0], t[3],
        t[0], t[3], t[2]
    };
    vertexData.pushAttributeFloat2_static(textures);

    vertexData.configureBufferFloat3_static();
    vertexData.configureBufferFloat2_static();
    vertexData.configureIndices();

    vertexData.configureVAO();

    Mesh mesh;
    vertexData.setMode(GL_TRIANGLES);
    mesh.setVertexData(move(vertexData));
    
    return (mesh);
}

}
