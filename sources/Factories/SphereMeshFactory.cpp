#include "Factories/SphereMeshFactory.hpp"
#include "Core/VertexData.hpp"
#include "Debug/Trace.hpp"
#include "Math/Utils.hpp"

namespace GilqEngine
{

Mesh SphereMeshFactory::createMesh()
{
    TRACE();
    int lats = 10, longs = 10;
    // std::vector<GLfloat> vertices;
    std::vector<GLuint> indices;
    VertexData vertexData;
    int indicator = 0;
    for(int i = 0; i <= lats; i++)
    {
        float lat0 = (float)PI * (-0.5f + (float) (i - 1) / lats);
        float z0  = sin(lat0);
        float zr0 =  cos(lat0);

        float lat1 = (float)PI * (-0.5f + (float) i / lats);
        float z1 = sin(lat1);
        float zr1 = cos(lat1);

        for(int j = 0; j <= longs; j++)
        {
            float lng = 2 * PI * (float) (j - 1) / longs;
            float x = cos(lng);
            float y = sin(lng);

            // vertices.push_back(x * zr0);
            // vertices.push_back(y * zr0);
            // vertices.push_back(z0);
            vertexData.pushPositionAttribute3D({x * zr0, y * zr0, z0});
            vertexData.pushNormalAttribute({0.0f, 0.0f, 1.0f}); // doesn't matter for now
            vertexData.pushTextureAttribute({((j & 2) >> 1) * 1.0f, ((j & 3) >> 1) * 1.0f});
            indices.push_back(indicator);
            indicator++;

            // vertices.push_back(x * zr1);
            // vertices.push_back(y * zr1);
            // vertices.push_back(z1);
            vertexData.pushPositionAttribute3D({x * zr1, y * zr1, z1});
            vertexData.pushNormalAttribute({0.0f, 0.0f, 1.0f}); // doesn't matter for now
            vertexData.pushTextureAttribute({((j & 2) >> 1) * 1.0f, ((j & 3) >> 1) * 1.0f});
            indices.push_back(indicator);
            indicator++;
        }
    }
    vertexData.pushIndices(indices);
    vertexData.configurePositionAttribute();
    vertexData.configureNormalAttribute();
    vertexData.configureTextureAttribute();
    vertexData.configureIndices();

    vertexData.configureVAO();
    
    Mesh mesh;
    mesh.setVertexData(std::move(vertexData));
    return (mesh);
}

}
