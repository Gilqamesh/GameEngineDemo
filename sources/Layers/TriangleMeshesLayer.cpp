#include "Layers/TriangleMeshesLayer.hpp"
#include "Factories/TriangleMeshFactory.hpp"
#include "Debug/Trace.hpp"

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
    TriangleMeshFactory triangleMeshFactory;
    for (unsigned int i = 0; i < 1; ++i)
    {
        triangleMeshes.push_back(triangleMeshFactory.createStaticMesh(identity_matrix<GLfloat, 4, 4>()));
        triangleMeshes[i].setMaterial(shaderManager.getShader("Triangle"));
    }
}

void TriangleMeshesLayer::onDetach()
{
    TRACE();
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
    for (auto mesh : triangleMeshes)
    {
        mesh.draw();
    }
}

}
