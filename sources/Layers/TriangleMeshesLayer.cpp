#include "Layers/TriangleMeshesLayer.hpp"
#include "Factories/TriangleMeshFactory.hpp"
#include "Debug/Trace.hpp"
#include "Core/Material.hpp"
#include "Math/Utils.hpp"
#include "Math/Matrix.hpp"

namespace NAMESPACE
{

TriangleMeshesLayer::TriangleMeshesLayer(MacApplication *macApplication, ICamera *camera)
    : ILayer(LayerType::regular), _macApplication(macApplication), _camera(camera)
{
    TRACE();
}

void TriangleMeshesLayer::onAttach()
{
    TRACE();
    GLCall(glPolygonMode(GL_FRONT_AND_BACK, GL_FILL));
    shaderManager.addShader(
        "/Users/edavid/Desktop/Myrepo/GameEngineDemo/resources/shaders/Triangle/vs.glsl",
        "/Users/edavid/Desktop/Myrepo/GameEngineDemo/resources/shaders/Triangle/fs.glsl",
        "Triangle");
    textureManager.addTexture(
        "/Users/edavid/Desktop/Myrepo/GameEngineDemo/resources/textures/Red.png",
        "Red");
    Material redTriangle(shaderManager.getShader("Triangle"), "Red Triangle");
    redTriangle.setDiffuse(textureManager.getTexture("Red"));
    materialManager.addMaterial(redTriangle);
    TriangleMeshFactory triangleMeshFactory;
    for (unsigned int i = 0; i < 1; ++i)
    {
        Entity mesh = meshManager.createStaticMesh(&triangleMeshFactory, scale_matrix(Vector<GLfloat, 3>(100.0f, 100.0f, 100.0f)));
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
    (void)_macApplication;
    (void)_camera;
    TRACE();
    auto *shader = shaderManager.getShader("Triangle");
    shader->bind();
    shader->setMat4("model", identity_matrix<GLfloat, 4, 4>());
    shader->setMat4("view", identity_matrix<GLfloat, 4, 4>());
    shader->setMat4("projection", identity_matrix<GLfloat, 4, 4>());
    // shader->setMat4("model", identity_matrix<GLfloat, 4, 4>());
    // shader->setMat4("view", _camera->getProjection());
    // shader->setMat4("projection", projection_matrix_perspective(
    //     degToRad(60.0f),
    //     _macApplication->getWindow()->getWidth() / (GLfloat)_macApplication->getWindow()->getHeight(),
    //     0.1f,
    //     100.0f
    // ));
    shader->unbind();
    PRINT_HERE();
    meshManager.drawMeshes();
    PRINT_HERE();
}

}
