#include "Layers/QuadTreeLayer.hpp"
#include "Factories/QuadMeshFactory3D.hpp"
#include "Log.hpp"
#include "ECS/Components/Colliders/RectangleColliderComponent.hpp"
#include "ECS/Components/VelocityComponent.hpp"
#include "ECS/Components/PositionComponent.hpp"
#include "ECS/Systems/CollisionSystem.hpp"
#include "ECS/Systems/DisplacementSystem.hpp"

namespace GilqEngine
{

QuadTreeLayer::QuadTreeLayer(MacWindow *window)
    : ILayer("QuadTree Layer", LayerType::overlay),
      _window(window)
{

}

void QuadTreeLayer::onAttach()
{
    loadShaders();
    loadTextures();
    loadMaterials();
    loadModels();

    registerSystems();

    float low = 0.0f;
    float maxHeight = (float)_window->getHeight();
    float maxWidth = (float)_window->getWidth();
    LOG(_window->getWidth());
    LOG(_window->getHeight());
    unsigned int numberOfInsertions = 1;
    vector<string> modelNames = {
        "BlackRectangleModel",
        "RedRectangleModel",
        "GreenRectangleModel",
        "BlueRectangleModel",
        "YellowRectangleModel"
    };
    // Vertical line
    _objectCoordinator.createModel("PurpleRectangleModel", "RectangleShader",
            rotation_matrix(degToRad(90.0f), Vector<float, 3>(1.0f, 0.0f, 0.0f)) *
            scale_matrix(maxWidth, 1.0f, 1.0f) *
            translation_matrix(maxWidth / 2.0f, 0.0f, maxHeight / 2.0f));
    // Horizontal line
    _objectCoordinator.createModel("PurpleRectangleModel", "RectangleShader",
            rotation_matrix(degToRad(90.0f), Vector<float, 3>(1.0f, 0.0f, 0.0f)) *
            scale_matrix(1.0f, 1.0f, maxHeight) *
            translation_matrix(maxWidth / 2.0f, 0.0f, maxHeight / 2.0f));

    for (unsigned int index = 0; index < numberOfInsertions; ++index)
    {
        float upperLeftX = getRand(low, maxWidth);
        float upperLeftY = getRand(low, maxHeight);
        // float width = getRand(low, maxWidth);
        float width = 20.0f;
        if (upperLeftX + width > maxWidth)
            width = maxWidth - upperLeftX;
        // float height = getRand(low, maxHeight);
        float height = 20.0f;
        if (upperLeftY + height > maxHeight)
            height = maxHeight - upperLeftY;
        string modelName = modelNames[rand() % modelNames.size()];
        // Top
        Entity rectangle = _objectCoordinator.createModel(modelName, "RectangleShader",
            rotation_matrix(degToRad(90.0f), Vector<float, 3>(1.0f, 0.0f, 0.0f)) *
            scale_matrix(width, 1.0f, height) *
            translation_matrix(upperLeftX + width / 2.0f, 0.0f, upperLeftY + height / 2.0f));
        _objectCoordinator.attachComponent<RectangleColliderComponent>(rectangle, {upperLeftX, upperLeftY, width, height});
        _objectCoordinator.attachComponent<VelocityComponent>(rectangle, {getRand(-20.0f, 20.0f), 0.0f, getRand(-20.0f, 20.0f)});
        _objectCoordinator.attachComponent<PositionComponent>(rectangle, {upperLeftX, 0.0f, upperLeftY});
    }
}

void QuadTreeLayer::onDetach()
{

}

void QuadTreeLayer::onEvent(IEvent &e)
{
    (void)e;
}

void QuadTreeLayer::onUpdate(float deltaTime)
{
    LOG(deltaTime);
    _objectCoordinator.onUpdate(deltaTime);
}

void QuadTreeLayer::onRender()
{
    Vector<float, 3> camPosition(0.0f, 0.0f, (float)_window->getHeight());
    _objectCoordinator.drawObjects(
        camPosition,
        look_at(camPosition,
                camPosition + Vector<float, 3>(0.0f, -1.0f, 0.0f),
                Vector<float, 3>(0.0f, 0.0f, -1.0f)),
        projection_matrix_ortho(0.0f,
                                (float)_window->getWidth(),
                                0.0f,
                                -(float)_window->getHeight(),
                                -100.0f, 100.0f));
}

void QuadTreeLayer::loadShaders(void)
{
    _objectCoordinator.addShader(getShaderDir() + "3D/TriangleNormal/vs.glsl",
                                 getShaderDir() + "3D/TriangleNormal/fs.glsl",
                                 "RectangleShader");
}

void QuadTreeLayer::loadTextures(void)
{
    _objectCoordinator.addTexture(getTextureDir() + "Black.png",
                                  "BlackTexture");
    _objectCoordinator.addTexture(getTextureDir() + "Red.png",
                                  "RedTexture");
    _objectCoordinator.addTexture(getTextureDir() + "Green.png",
                                  "GreenTexture");
    _objectCoordinator.addTexture(getTextureDir() + "Blue.png",
                                  "BlueTexture");
    _objectCoordinator.addTexture(getTextureDir() + "Yellow.png",
                                  "YellowTexture");
    _objectCoordinator.addTexture(getTextureDir() + "Purple.png",
                                  "PurpleTexture");
}

void QuadTreeLayer::loadMaterials(void)
{
    _objectCoordinator.addMaterial("BlackMaterial");
    _objectCoordinator.setDiffuse("BlackMaterial", "BlackTexture");

    _objectCoordinator.addMaterial("RedMaterial");
    _objectCoordinator.setDiffuse("RedMaterial", "RedTexture");

    _objectCoordinator.addMaterial("GreenMaterial");
    _objectCoordinator.setDiffuse("GreenMaterial", "GreenTexture");

    _objectCoordinator.addMaterial("BlueMaterial");
    _objectCoordinator.setDiffuse("BlueMaterial", "BlueTexture");

    _objectCoordinator.addMaterial("YellowMaterial");
    _objectCoordinator.setDiffuse("YellowMaterial", "YellowTexture");

    _objectCoordinator.addMaterial("PurpleMaterial");
    _objectCoordinator.setDiffuse("PurpleMaterial", "PurpleTexture");
}

void QuadTreeLayer::loadModels(void)
{
    QuadMeshFactory3D quadMeshFactory;

    _objectCoordinator.loadModel(&quadMeshFactory, "BlackRectangleModel", "BlackMaterial");
    _objectCoordinator.loadModel(&quadMeshFactory, "RedRectangleModel", "RedMaterial");
    _objectCoordinator.loadModel(&quadMeshFactory, "GreenRectangleModel", "GreenMaterial");
    _objectCoordinator.loadModel(&quadMeshFactory, "BlueRectangleModel", "BlueMaterial");
    _objectCoordinator.loadModel(&quadMeshFactory, "YellowRectangleModel", "YellowMaterial");
    _objectCoordinator.loadModel(&quadMeshFactory, "PurpleRectangleModel", "PurpleMaterial");
}

void QuadTreeLayer::registerSystems(void)
{
    _objectCoordinator.registerSystem<CollisionSystem>();
    _objectCoordinator.registerSystem<DisplacementSystem>();
}

}
