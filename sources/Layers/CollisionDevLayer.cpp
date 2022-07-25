#include "Layers/CollisionDevLayer.hpp"
#include "Factories/QuadMeshFactory2DTexture.hpp"
#include "Log.hpp"
#include "ECS/Components/VelocityComponent2D.hpp"
#include "ECS/Components/PositionComponent2D.hpp"
#include "ECS/Systems/CollisionSystem2D.hpp"

namespace GilqEngine
{

CollisionDevLayer::CollisionDevLayer(MacWindow *window)
    : ILayer("QuadTree Layer", LayerType::overlay),
      _window(window)
{

}

void CollisionDevLayer::onAttach()
{
    loadShaders();
    loadTextures();
    loadMaterials();
    loadModels();

    registerSystems();

    _rectangle = { 800.0f, 450.0f, 100.0f, 60.0f };
    _rect = _objectCoordinator.createModel2D("WhiteRectangleModel", "RectangleShader",
        scale_matrix(_rectangle.width, _rectangle.height),
        Vector<float, 2>(_rectangle.topLeftX, _rectangle.topLeftY),
        Vector<float, 4>(0.0f, 0.0f, 1.0f, 1.0f));
    
    _rectangleMouse = { _window->getXMousePosition(), _window->getYMousePosition(), 60.0f, 40.0f };
    _rectMouse = _objectCoordinator.createModel2D("WhiteRectangleModel", "RectangleShader",
        scale_matrix(_rectangleMouse.width, _rectangleMouse.height),
        Vector<float, 2>(_rectangleMouse.topLeftX, _rectangleMouse.topLeftY),
        Vector<float, 4>(0.0f, 1.0f, 0.0f, 1.0f));
}

void CollisionDevLayer::onDetach()
{

}

void CollisionDevLayer::onEvent(IEvent &e)
{
    (void)e;
}

void CollisionDevLayer::onUpdate(float deltaTime)
{
    LOG(deltaTime);
    _objectCoordinator.updatePosition2D(_rectMouse, _window->getMousePosition());

    _rectangleMouse.topLeftX = _window->getXMousePosition();
    _rectangleMouse.topLeftY = _window->getYMousePosition();
    if (_rectangle.doesIntersect(_rectangleMouse))
    {
        _objectCoordinator.updateColor(_rect, Vector<float, 4>(1.0f, 1.0f, 0.0f, 1.0f));
    }
    else
    {
        _objectCoordinator.updateColor(_rect, Vector<float, 4>(0.0f, 0.0f, 1.0f, 1.0f));
    }
    _objectCoordinator.onUpdate(deltaTime);
}

void CollisionDevLayer::onRender()
{
    _objectCoordinator.drawObjects2D(
        projection_matrix_ortho(0.0f, (float)_window->getWidth(), (float)_window->getHeight(), 0.0f, -1.0f, 1.0f)
    );
}

void CollisionDevLayer::loadShaders(void)
{
    _objectCoordinator.addShader(getShaderDir() + "2D/TriangleTexture/vs.glsl",
                                 getShaderDir() + "2D/TriangleTexture/fs.glsl",
                                 "RectangleShader");
}

void CollisionDevLayer::loadTextures(void)
{
    _objectCoordinator.addTexture(getTextureDir() + "White.png", "WhiteTexture");
}

void CollisionDevLayer::loadMaterials(void)
{
    _objectCoordinator.addMaterial("WhiteMaterial");
    _objectCoordinator.setDiffuse("WhiteMaterial", "WhiteTexture");
}

void CollisionDevLayer::loadModels(void)
{
    QuadMeshFactory2DTexture quadMeshFactory;

    _objectCoordinator.loadModel(&quadMeshFactory, "WhiteRectangleModel", "WhiteMaterial");
}

void CollisionDevLayer::registerSystems(void)
{
    _objectCoordinator.registerSystem<CollisionSystem2D>(_window);
}

}
