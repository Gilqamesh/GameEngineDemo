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
    GLCall(glPolygonMode(GL_FRONT_AND_BACK, GL_FILL));
    shaderManager.addShader("resources/shaders/Triangle/vs.glsl", "resources/shaders/Triangle/fs.glsl", "Triangle");
    textureManager.addTexture("resources/textures/Red.png", "Red");
    Material redTriangle(shaderManager.getShader("Triangle"), "Red Triangle");
    redTriangle.setDiffuse(textureManager.getTexture("Red"));
    materialManager.addMaterial(redTriangle);
    TriangleMeshFactory triangleMeshFactory;
    for (unsigned int i = 0; i < 1; ++i)
    {
        Entity mesh = meshManager.createStaticMesh(&triangleMeshFactory, identity_matrix<GLfloat, 4, 4>());
        meshes.insert(mesh);
        meshManager.setStaticMeshMaterial(mesh, redTriangle);
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
    auto *shader = shaderManager.getShader("Triangle");
    shader->bind();
    shader->setMat4("MVP", identity_matrix<GLfloat, 4, 4>());
    shader->unbind();
    PRINT_HERE();
    meshManager.drawMeshes();
}

}
