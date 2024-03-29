#include "MeshPrimitives/SphereMeshPrimitive.hpp"
#include "VertexAttributes/VertexAttributeFloat2.hpp"
#include "VertexAttributes/VertexAttributeFloat3.hpp"
#include "Core/VertexData.hpp"
#include "Debug/Trace.hpp"
#include "Math/Utils.hpp"

namespace GilqEngine
{

    Mesh SphereMeshPrimitive::createMesh()
    {
        TRACE();
        int lats = 10, longs = 10;
        // vector<GLfloat> vertices;
        vector<u32> indices;
        VertexData vertexData("SphereMeshPrimitive");
        int indicator = 0;
        vector<VertexAttributeFloat3> position;
        vector<VertexAttributeFloat3> normal;
        vector<VertexAttributeFloat2> texture;
        for (int i = 0; i <= lats; i++)
        {
            float lat0 = (float)PI * (-0.5f + (float)(i - 1) / lats);
            float z0 = sin(lat0);
            float zr0 = cos(lat0);

            float lat1 = (float)PI * (-0.5f + (float)i / lats);
            float z1 = sin(lat1);
            float zr1 = cos(lat1);

            for (int j = 0; j <= longs; j++)
            {
                float lng = 2 * PI * (float)(j - 1) / longs;
                float x = cos(lng);
                float y = sin(lng);

                // vertices.push_back(x * zr0);
                // vertices.push_back(y * zr0);
                // vertices.push_back(z0);
                position.push_back({x * zr0, y * zr0, z0});
                normal.push_back({0.0f, 0.0f, 1.0f}); // doesn't matter for now
                texture.push_back({((j & 2) >> 1) * 1.0f, ((j & 3) >> 1) * 1.0f});
                indices.push_back(indicator);
                indicator++;

                // vertices.push_back(x * zr1);
                // vertices.push_back(y * zr1);
                // vertices.push_back(z1);
                position.push_back({x * zr1, y * zr1, z1});
                normal.push_back({0.0f, 0.0f, 1.0f}); // doesn't matter for now
                texture.push_back({((j & 2) >> 1) * 1.0f, ((j & 3) >> 1) * 1.0f});
                indices.push_back(indicator);
                indicator++;
            }
        }
        vertexData.pushAttributeFloat2_static(texture);
        vertexData.pushAttributeFloat3_static(position);
        vertexData.pushAttributeFloat3_static(normal);

        vertexData.configureBufferFloat2_static();
        vertexData.configureBufferFloat3_static();

        vertexData.pushIndices(indices);
        vertexData.configureIndices();

        vertexData.configureVAO();

        Mesh mesh;
        vertexData.setMode(GL_TRIANGLES);
        mesh.setVertexData(move(vertexData));

        return (mesh);
    }

}
