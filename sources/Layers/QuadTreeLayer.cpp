#include "Layers/QuadTreeLayer.hpp"
#include "MeshPrimitives/QuadMeshPrimitive2D.hpp"
#include "Log.hpp"
#include "ECS/Components/Colliders/RectangleColliderComponent.hpp"
#include "ECS/Components/VelocityComponent2D.hpp"
#include "ECS/Components/PositionComponent2D.hpp"
#include "ECS/Systems/CollisionSystem2D.hpp"

namespace GilqEngine
{

QuadTreeLayer::QuadTreeLayer(MacWindow *window)
    : ILayer("QuadTree Layer", LayerType::overlay),
      _window(window),
      _objectCoordinator(window)
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
    unsigned int numberOfInsertions = 250;
    vector<string> modelNames = {
        "BlackRectangleModel",
        "RedRectangleModel",
        "GreenRectangleModel",
        "BlueRectangleModel",
        "YellowRectangleModel"
    };
    // Vector<float, 2> position1(750.0f, 200.0f);
    // Vector<float, 2> position2(850.0f, 300.0f);
    // Vector<float, 2> size(60.0f, 60.0f);

    // Entity rec1 = _objectCoordinator.createModel2D("PurpleRectangleModel", "RectangleShader", scale_matrix(size), position1, Vector<float, 4>(1.0f, 0.0f, 0.0f, 1.0f));
    // _objectCoordinator.attachComponent<RectangleColliderComponent>(rec1, { position1, size });
    // _objectCoordinator.attachComponent<VelocityComponent2D>(rec1, { 30.0f, 20.0f });

    // Entity rec2 = _objectCoordinator.createModel2D("PurpleRectangleModel", "RectangleShader", scale_matrix(size), position2, Vector<float, 4>(0.0f, 1.0f, 0.0f, 1.0f));
    // _objectCoordinator.attachComponent<RectangleColliderComponent>(rec2, { position2, size });
    // _objectCoordinator.attachComponent<VelocityComponent2D>(rec2, { -5.0f, -20.0f });

    // // Vertical line
    // _objectCoordinator.createModel2D("PurpleRectangleModel", "RectangleShader",
    //         scale_matrix(maxWidth, 1.0f, 1.0f) *
    //         translation_matrix(0.0f, maxHeight / 2.0f, 0.0f));
    // // Horizontal line
    // _objectCoordinator.createModel2D("PurpleRectangleModel", "RectangleShader",
    //         scale_matrix(1.0f, maxHeight, 1.0f) *
    //         translation_matrix(maxWidth / 2.0f, 0.0f, 0.0f));

    for (unsigned int index = 0; index < numberOfInsertions; ++index)
    {
        // Rectangle parameters
        Vector<float, 2> position(getRand(low, maxWidth), getRand(low, maxHeight));
        float width = getRand(5.0f, 40.0f);
        float height = getRand(5.0f, 40.0f);
        Vector<float, 2> size(width, height);

        // Bound checking
        if (position[0] + size[0] > maxWidth)
            size[0] = maxWidth - position[0];
        if (position[1] + size[1] > maxHeight)
            size[1] = maxHeight - position[1];

        // Create rectangle
        ASSERT(modelNames.size());
        string modelName = modelNames[getRand(0, modelNames.size() - 1)];
        Entity rectangle = _objectCoordinator.createModel2D(modelName, "RectangleShader");
        _objectCoordinator.attachComponent<RectangleColliderComponent>(rectangle, { position, size });
        float lowVelocity = -40.0f;
        float highVelocity = 100.0f;
        _objectCoordinator.attachComponent<VelocityComponent2D>(rectangle, {getRand(lowVelocity, highVelocity), getRand(lowVelocity, highVelocity)});
        _objectCoordinator.attachComponent<ColorComponent>(rectangle, Vector<float, 4>(getRand(0.3f, 1.0f), getRand(0.3f, 1.0f), getRand(0.3f, 1.0f), 1.0f));
        _objectCoordinator.attachComponent<PositionComponent2D>(rectangle, position);
        _objectCoordinator.attachComponent<SizeComponent2D>(rectangle, size);
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
    _objectCoordinator.update(deltaTime);
}

void QuadTreeLayer::onRender()
{
    _objectCoordinator.drawObjects2D();
}

void QuadTreeLayer::loadShaders(void)
{
    _objectCoordinator.addShader(getShaderDir() + "2D/TriangleColor/vs.glsl",
                                 getShaderDir() + "2D/TriangleColor/fs.glsl",
                                 "RectangleShader");
}

void QuadTreeLayer::loadTextures(void)
{
    _objectCoordinator.addTexture(getTextureDir() + "White.png", "WhiteTexture");
    _objectCoordinator.addTexture(getTextureDir() + "Purple.png", "PurpleTexture");
    _objectCoordinator.addTexture(getTextureDir() + "Green.png", "GreenTexture");
    _objectCoordinator.addTexture(getTextureDir() + "Blue.png", "BlueTexture");
    _objectCoordinator.addTexture(getTextureDir() + "Black.png", "BlackTexture");
    _objectCoordinator.addTexture(getTextureDir() + "Yellow.png", "YellowTexture");
    _objectCoordinator.addTexture(getTextureDir() + "Red.png", "RedTexture");
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
    QuadMeshPrimitive2D quadMeshPrimitive;

    _objectCoordinator.loadModel(&quadMeshPrimitive, "BlackRectangleModel", "BlackMaterial");
    _objectCoordinator.loadModel(&quadMeshPrimitive, "RedRectangleModel", "RedMaterial");
    _objectCoordinator.loadModel(&quadMeshPrimitive, "GreenRectangleModel", "GreenMaterial");
    _objectCoordinator.loadModel(&quadMeshPrimitive, "BlueRectangleModel", "BlueMaterial");
    _objectCoordinator.loadModel(&quadMeshPrimitive, "YellowRectangleModel", "YellowMaterial");
    _objectCoordinator.loadModel(&quadMeshPrimitive, "PurpleRectangleModel", "PurpleMaterial");
}

void QuadTreeLayer::registerSystems(void)
{
    _objectCoordinator.registerSystem<CollisionSystem2D>(_window);
}

}
