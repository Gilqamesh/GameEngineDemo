#include "Layers/CollisionDevLayer.hpp"
#include "Factories/QuadMeshFactory2DTexture.hpp"
#include "Factories/CircleMeshFactory2DTexture.hpp"
#include "Factories/LineMeshFactory2D.hpp"
#include "Log.hpp"
#include "ECS/Components/VelocityComponent2D.hpp"
#include "ECS/Components/PositionComponent2D.hpp"
#include "ECS/Systems/CollisionSystem2D.hpp"
#include "Inputs/GLFWInput.hpp"

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

    // _window->enablePolygonMode_Line();
    _window->enableBlending();

    LOG("Resolution: " << _window->getWidth() << " " << _window->getHeight());

    _rectangle = { 800.0f, 450.0f, 100.0f, 60.0f };
    _rect = _objectCoordinator.createModel2D("WhiteRectangleModel", "RectangleShader",
        scale_matrix(_rectangle.width, _rectangle.height),
        Vector<float, 2>(_rectangle.topLeftX, _rectangle.topLeftY),
        Vector<float, 4>(0.0f, 0.0f, 1.0f, 1.0f));

    _line = _objectCoordinator.createModel2D("WhiteLineModel", "LineShader",
        identity_matrix<float, 4, 4>(),
        Vector<float, 2>(0.0f, 0.0f),
        Vector<float, 4>(0.0f, 1.0f, 0.0f, 1.0f));
    
    Vector<float, 2> circleOrigin = {200.0f, 300.0f};
    _circle = _objectCoordinator.createModel2D("WhiteCircleModel", "CircleShader",
        scale_matrix(200.0f, 200.0f),
        circleOrigin,
        Vector<float, 4>(1.0f, 0.0f, 0.0f, 1.0f));
    _objectCoordinator.addFloat("CircleShader", "radius", 6.0f);
    _objectCoordinator.addFloat2("CircleShader", "origin", circleOrigin);

    _normalLine = _objectCoordinator.createModel2D("WhiteLineModel2", "LineShader");
    _objectCoordinator.hideEntity(_normalLine);

    _mouseRectangle = { 0.0f, 0.0f, 50.0f, 75.0f };
    _mouseRect = _objectCoordinator.createModel2D("WhiteRectangleModel2", "RectangleShader",
        scale_matrix(_mouseRectangle.width, _mouseRectangle.height),
        {},
        {1.0f, 0.0f, 0.0f, 1.0f});
    _objectCoordinator.attachComponent<VelocityComponent2D>(_mouseRect, {});
}

void CollisionDevLayer::onDetach()
{
    _objectCoordinator.clear();
}

void CollisionDevLayer::onEvent(IEvent &e)
{
    (void)e;
}

void CollisionDevLayer::onUpdate(float deltaTime)
{
    // LOG(deltaTime);

    // mouseRay line
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

    // mouseRectangle collision with rect
    Vector<float, 2> rayDirection = mousePos - Vector<float, 2>(_mouseRectangle.topLeftX, _mouseRectangle.topLeftY);
    Vector<float, 2> mouseRecVelocity = normalize(rayDirection) * 10.0f;
    VelocityComponent2D &prevVelocity = _objectCoordinator.getComponent<VelocityComponent2D>(_mouseRect);
    if (GLFWInput::getInstance(_window->getWindow())->isMousePressed(0))
        prevVelocity.v += mouseRecVelocity;
    if (_mouseRectangle.dynamicRecIntersect(prevVelocity.v, _rectangle, contactPoint, contactNormal, tHitNear, deltaTime))
    {
        prevVelocity.v += element_wise_multiply(contactNormal, Vector<float, 2>(abs(prevVelocity.v[0]), abs(prevVelocity.v[1])))
            * (1.0f - tHitNear);
    }
    Vector<float, 2> newMouseRectPosition = Vector<float, 2>(_mouseRectangle.topLeftX, _mouseRectangle.topLeftY) + prevVelocity.v * deltaTime;
    _objectCoordinator.updateComponent<PositionComponent2D>(_mouseRect, newMouseRectPosition);
    _mouseRectangle.topLeftX = newMouseRectPosition[0];
    _mouseRectangle.topLeftY = newMouseRectPosition[1];

    // mouseRay collision with rect
    if (_rectangle.doesRayIntersect(_lineStart, mousePos - _lineStart, contactPoint, contactNormal, tHitNear) && tHitNear < 1.0f)
    {
        _objectCoordinator.updateComponent<ColorComponent>(_rect, Vector<float, 4>(1.0f, 1.0f, 0.0f, 1.0f));
        _objectCoordinator.showEntity(_circle);
        _objectCoordinator.updateComponent<PositionComponent2D>(_circle, contactPoint);
        _objectCoordinator.updateFloat2("CircleShader", "origin", contactPoint);

        _objectCoordinator.showEntity(_normalLine);
        vector<Vector<float, 2>> normalLine = {
            contactPoint + contactNormal * 30.0f,
            contactPoint
        };
        _objectCoordinator.updateVBO_position2D(_normalLine, normalLine.data(), normalLine.size() * sizeof(normalLine[0]));
    }
    else
    {
        _objectCoordinator.updateComponent<ColorComponent>(_rect, Vector<float, 4>(0.0f, 0.0f, 1.0f, 1.0f));
        _objectCoordinator.hideEntity(_circle);
        _objectCoordinator.hideEntity(_normalLine);
    }

    _objectCoordinator.updateSystems(deltaTime);
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
    _objectCoordinator.addShader(getShaderDir() + "2D/CircleColor/vs.glsl",
                                 getShaderDir() + "2D/CircleColor/fs.glsl",
                                 "CircleShader");
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
    CircleMeshFactory2DTexture circleMeshFactory;

    _objectCoordinator.loadModel(&quadMeshFactory, "WhiteRectangleModel", "WhiteMaterial");
    _objectCoordinator.loadModel(&circleMeshFactory, "WhiteCircleModel", "WhiteMaterial");
    _objectCoordinator.loadModel(&lineMeshFactory, "WhiteLineModel", "WhiteMaterial");
    _objectCoordinator.loadModel(&lineMeshFactory, "WhiteLineModel2", "WhiteMaterial");
    _objectCoordinator.loadModel(&quadMeshFactory, "WhiteRectangleModel2", "WhiteMaterial");
}

void CollisionDevLayer::registerSystems(void)
{
    _objectCoordinator.registerSystem<CollisionSystem2D>(_window);
}

}
