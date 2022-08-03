#include "MeshPrimitives/CubeMeshPrimitive.hpp"
#include "Core/VertexData.hpp"
#include "Debug/Trace.hpp"

namespace GilqEngine
{

Mesh CubeMeshPrimitive::createMesh()
{
    TRACE();
    vector<Vector<GLfloat, 4>>         preVertices{
        {-0.5f, -0.5f, -0.5f, 1.0f},
        {0.5f, -0.5f, -0.5f, 1.0f},
        {-0.5f, -0.5f, 0.5f, 1.0f},
        {0.5f, -0.5f, 0.5f, 1.0f},
        {-0.5f, 0.5f, -0.5f, 1.0f},
        {0.5f, 0.5f, -0.5f, 1.0f},
        {-0.5f, 0.5f, 0.5f, 1.0f},
        {0.5f, 0.5f, 0.5f, 1.0f}
    };
    vector<Vector<GLfloat, 4>>         preNormals{
        {0.0f, -1.0f, 0.0f, 1.0f},
        {0.0f, 1.0f, 0.0f, 1.0f},
        {1.0f, 0.0f, 0.0f, 1.0f},
        {-1.0f, 0.0f, 0.0f, 1.0f},
        {0.0f, 0.0f, 1.0f, 1.0f},
        {0.0f, 0.0f, -1.0f, 1.0f}
    };
    vector<Vector<GLfloat, 2>>         t{
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

    vector<Vector<GLfloat, 3>>         v;
    vector<Vector<GLfloat, 3>>         n;
    VertexData                              vertexData;
    for (auto &vertex : preVertices)
    {
        v.push_back({vertex[0], vertex[1], vertex[2]});
    }
    for (auto &normal : preNormals)
    {
        n.push_back({normal[0], normal[1], normal[2]});
    }

    for (unsigned int i = 0; i < indices.size(); ++i)
    {
        vertexData.pushPositionAttribute3D(v[indices[i]]);
        vertexData.pushIndices({i});
    }

    vector<NormalVertexAttribute>      normals{
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
    for (const auto &normal : normals)
        vertexData.pushNormalAttribute(normal);
    vector<TextureVertexAttribute>     textures{
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
    for (const auto &texture : textures)
        vertexData.pushTextureAttribute(texture);
    vertexData.configurePositionAttribute();
    vertexData.configureNormalAttribute();
    vertexData.configureTextureAttribute();
    vertexData.configureIndices();

    vertexData.configureVAO();

    Mesh mesh;
    vertexData.setMode(GL_TRIANGLES);
    mesh.setVertexData(move(vertexData));
    
    return (mesh);
}

}
