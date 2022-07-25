#include "Layers/QuadTreeLayer.hpp"
#include "Factories/QuadMeshFactory2D.hpp"
#include "Log.hpp"
#include "ECS/Components/Colliders/RectangleColliderComponent.hpp"
#include "ECS/Components/VelocityComponent2D.hpp"
#include "ECS/Components/PositionComponent2D.hpp"
#include "ECS/Systems/CollisionSystem2D.hpp"

namespace GilqEngine
{

QuadTreeLayer::QuadTreeLayer(IWindow *window)
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
    unsigned int numberOfInsertions = 1000;
    vector<string> modelNames = {
        "BlackRectangleModel",
        "RedRectangleModel",
        "GreenRectangleModel",
        "BlueRectangleModel",
        "YellowRectangleModel"
    };
    // Vertical line
    _objectCoordinator.createModel2D("PurpleRectangleModel", "RectangleShader",
            scale_matrix(maxWidth, 1.0f, 1.0f) *
            translation_matrix(0.0f, maxHeight / 2.0f, 0.0f));
    // Horizontal line
    _objectCoordinator.createModel2D("PurpleRectangleModel", "RectangleShader",
            scale_matrix(1.0f, maxHeight, 1.0f) *
            translation_matrix(maxWidth / 2.0f, 0.0f, 0.0f));

    for (unsigned int index = 0; index < numberOfInsertions; ++index)
    {
        // Rectangle parameters
        float upperLeftX = getRand(low, maxWidth);
        float upperLeftY = getRand(low, maxHeight);
        float width = 20.0f;
        float height = 20.0f;

        // Bound checking
        if (upperLeftX + width > maxWidth)
            width = maxWidth - upperLeftX;
        if (upperLeftY + height > maxHeight)
            height = maxHeight - upperLeftY;

        // Create rectangle
        string modelName = modelNames[rand() % modelNames.size()];
        Entity rectangle = _objectCoordinator.createModel2D(modelName, "RectangleShader", scale_matrix(width, height, 1.0f));
        _objectCoordinator.attachComponent<RectangleColliderComponent>(rectangle, {upperLeftX, upperLeftY, width, height});
        _objectCoordinator.attachComponent<VelocityComponent2D>(rectangle, {getRand(-20.0f, 20.0f), getRand(-20.0f, 20.0f)});
        _objectCoordinator.attachComponent<PositionComponent2D>(rectangle, {upperLeftX, upperLeftY});
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
    _objectCoordinator.drawObjects2D(
        projection_matrix_ortho(0.0f, (float)_window->getWidth(), (float)_window->getHeight(), 0.0f, -1.0f, 1.0f));
}

void QuadTreeLayer::loadShaders(void)
{
    _objectCoordinator.addShader(getShaderDir() + "2D/TriangleColor/vs.glsl",
                                 getShaderDir() + "2D/TriangleColor/fs.glsl",
                                 "RectangleShader");
}

void QuadTreeLayer::loadTextures(void)
{
    _objectCoordinator.addTexture(getTextureDir() + "White.png", "PurpleTexture");
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
    QuadMeshFactory2D quadMeshFactory;

    _objectCoordinator.loadModel(&quadMeshFactory, "BlackRectangleModel", "BlackMaterial");
    _objectCoordinator.loadModel(&quadMeshFactory, "RedRectangleModel", "RedMaterial");
    _objectCoordinator.loadModel(&quadMeshFactory, "GreenRectangleModel", "GreenMaterial");
    _objectCoordinator.loadModel(&quadMeshFactory, "BlueRectangleModel", "BlueMaterial");
    _objectCoordinator.loadModel(&quadMeshFactory, "YellowRectangleModel", "YellowMaterial");
    _objectCoordinator.loadModel(&quadMeshFactory, "PurpleRectangleModel", "PurpleMaterial");
}

void QuadTreeLayer::registerSystems(void)
{
    _objectCoordinator.registerSystem<CollisionSystem2D>(_window);
}

}
