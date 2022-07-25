#include "Layers/CollisionDevLayer.hpp"
#include "Factories/QuadMeshFactory2DTexture.hpp"
#include "Factories/LineMeshFactory2D.hpp"
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

    _window->enablePolygonMode_Line();

    _rectangle = { 800.0f, 450.0f, 100.0f, 60.0f };
    _rect = _objectCoordinator.createModel2D("WhiteRectangleModel", "RectangleShader",
        scale_matrix(_rectangle.width, _rectangle.height),
        Vector<float, 2>(_rectangle.topLeftX, _rectangle.topLeftY),
        Vector<float, 4>(0.0f, 0.0f, 1.0f, 1.0f));

    _line = _objectCoordinator.createModel2D("WhiteLineModel", "LineShader",
        identity_matrix<float, 4, 4>(),
        Vector<float, 2>(0.0f, 0.0f),
        Vector<float, 4>(0.0f, 1.0f, 0.0f, 1.0f));
}

void CollisionDevLayer::onDetach()
{

}

void CollisionDevLayer::onEvent(IEvent &e)
{
    (void)e;
}

template <typename T>
Matrix<T, 4, 4> rotM(T angleRad)
{
    return (Matrix<T, 4, 4>(
        cos(angleRad),      sin(angleRad),     static_cast<T>(0), static_cast<T>(0),
        -sin(angleRad),     cos(angleRad),     static_cast<T>(0), static_cast<T>(0),
        static_cast<T>(0),  static_cast<T>(0), static_cast<T>(1), static_cast<T>(0),
        static_cast<T>(0),  static_cast<T>(0), static_cast<T>(0), static_cast<T>(1)
    ));
}

void CollisionDevLayer::onUpdate(float deltaTime)
{
    LOG(deltaTime);

    Vector<float, 2> mousePos = _window->getMousePosition();
    Vector<float, 2> _lineStart = { 30.0f, 40.0f };
    vector<Vector<float, 2>> line = {
        _lineStart,
        mousePos
    };
    _objectCoordinator.updateVBO_position2D(_line, line.data(), line.size() * sizeof(line[0]));

    Vector<float, 2> contactPoint;
    Vector<float, 2> contactNormal;
    float tHitNear;
    if (_rectangle.doesRayIntersect(_lineStart, mousePos - _lineStart, contactPoint, contactNormal, tHitNear) && tHitNear < 1.0f)
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
    _objectCoordinator.addShader(getShaderDir() + "2D/LineColor/vs.glsl",
                                 getShaderDir() + "2D/LineColor/fs.glsl",
                                 "LineShader");
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
    LineMeshFactory2D lineMeshFactory;

    _objectCoordinator.loadModel(&quadMeshFactory, "WhiteRectangleModel", "WhiteMaterial");
    _objectCoordinator.loadModel(&lineMeshFactory, "WhiteLineModel", "WhiteMaterial");
}

void CollisionDevLayer::registerSystems(void)
{
    _objectCoordinator.registerSystem<CollisionSystem2D>(_window);
}

}
