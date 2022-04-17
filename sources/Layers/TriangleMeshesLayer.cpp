#include "Layers/TriangleMeshesLayer.hpp"
#include "Factories/TriangleMeshFactory.hpp"
#include "Debug/Trace.hpp"
#include "Core/Material.hpp"

namespace NAMESPACE
{

TriangleMeshesLayer::TriangleMeshesLayer()
    : ILayer(LayerType::regular)
{
    TRACE();
}

void TriangleMeshesLayer::onAttach()
{
    TRACE();
    shaderManager.addShader("resources/shaders/Triangle/vs.glsl", "resources/shaders/Triangle/fs.glsl", "Triangle");
    Material material(shaderManager.getShader("Triangle"));
    material.setDiffuse();
    TriangleMeshFactory triangleMeshFactory;
    for (unsigned int i = 0; i < 1; ++i)
    {
        triangleMeshes.push_back(triangleMeshFactory.createStaticMesh(identity_matrix<GLfloat, 4, 4>()));
        triangleMeshes[i].setMaterial();
    }
}

void TriangleMeshesLayer::onDetach()
{
    TRACE();
    shaderManager.clear();
    textureManager.clear();
}

void TriangleMeshesLayer::onEvent(IEvent &e)
{
    TRACE();
    (void)e;
}

void TriangleMeshesLayer::onUpdate(float deltaTime)
{
    TRACE();
    (void)deltaTime;
}

void TriangleMeshesLayer::onRender()
{
    TRACE();
    shaderManager.getShader("Triangle")->setMat4("MVP", identity_matrix<GLfloat, 4, 4>());
    for (auto mesh : triangleMeshes)
    {
        mesh.draw();
    }
}

}
