#include "Factories/BoundingRectangleMeshFactory.hpp"
#include "Core/VertexData.hpp"

namespace GilqEngine
{

Mesh BoundingRectangleMeshFactory::createMesh()
{
    TRACE();

    VertexData vertexData;
    float w = 0.001f;
    vector<PositionVertexAttribute> positions = {
        {-0.5f, 0.5f, 0.0f}, {0.5f, 0.5f, 0.0f}, {-0.5f, 0.5f - w, 0.0f},
        {0.5f, 0.5f - w, 0.0f}, {-0.5f + w, 0.5f - w, 0.0f}, {-0.5f, -0.5f, 0.0f},
        {-0.5f + w, -0.5f, 0.0f}, {0.5f - w, 0.5f - w, 0.0f}, {0.5f - w, -0.5f, 0.0f},
        {0.5f, -0.5f, 0.0f}, {-0.5f + w, -0.5f + w, 0.0f}, {0.5f - w, -0.5f + w, 0.0f}
    };
    // These arent checked
    vector<NormalVertexAttribute> normals = {
        {0.0f, 0.0f, 1.0f}, {0.0f, 0.0f, 1.0f}, {0.0f, 0.0f, 1.0f},
        {0.0f, 0.0f, 1.0f}, {0.0f, 0.0f, 1.0f}, {0.0f, 0.0f, 1.0f},
        {0.0f, 0.0f, 1.0f}, {0.0f, 0.0f, 1.0f}, {0.0f, 0.0f, 1.0f},
        {0.0f, 0.0f, 1.0f}, {0.0f, 0.0f, 1.0f}, {0.0f, 0.0f, 1.0f}
    };
    // These arent checked, so use unicolor texture
    vector<TextureVertexAttribute> textures = {
        {0.0f, 0.0f}, {0.0f, 1.0f}, {1.0f, 0.0f}, {1.0f, 1.0f},
        {0.0f, 0.0f}, {0.0f, 1.0f}, {1.0f, 0.0f}, {1.0f, 1.0f},
        {0.0f, 0.0f}, {0.0f, 1.0f}, {1.0f, 0.0f}, {1.0f, 1.0f},
        {0.0f, 0.0f}, {0.0f, 1.0f}, {1.0f, 0.0f}, {1.0f, 1.0f},
    };

    for (unsigned int i = 0;
        i < 12;
        ++i)
    {
        vertexData.pushPositionAttribute(positions[i]);
        vertexData.pushNormalAttribute(normals[i]);
        vertexData.pushTextureAttribute(textures[i]);
    }

    vertexData.configurePositionAttribute();
    vertexData.configureNormalAttribute();
    vertexData.configureTextureAttribute();

    vertexData.pushIndices({
        0, 1, 2, 1, 2, 3,
        2, 4, 6, 2, 6, 5,
        3, 9, 7, 9, 7, 8,
        6, 11, 8, 6, 11, 10
    });
    vertexData.configureIndices();

    vertexData.configureVAO();

    Mesh mesh;
    mesh.setVertexData(move(vertexData));

    return (mesh);
}

}
