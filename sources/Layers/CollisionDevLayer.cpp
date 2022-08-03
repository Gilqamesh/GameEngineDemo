#include "Layers/CollisionDevLayer.hpp"
#include "MeshPrimitives/QuadMeshPrimitive2DTexture.hpp"
#include "MeshPrimitives/CircleMeshPrimitive2DTexture.hpp"
#include "MeshPrimitives/LineMeshPrimitive2D.hpp"
#include "Log.hpp"
#include "ECS/Components/VelocityComponent2D.hpp"
#include "ECS/Components/PositionComponent2D.hpp"
#include "ECS/Components/SizeComponent2D.hpp"
#include "ECS/Components/RotationalComponent2D.hpp"
#include "ECS/Components/ColorComponent.hpp"
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

    _window->enablePolygonMode_Line();
    _window->enableBlending();

    LOG("Resolution: " << _window->getWidth() << " " << _window->getHeight());

    int nOfRectangles = 5;
    for (int i = 0; i < nOfRectangles; ++i)
    {
        Vector<float, 2> rectSize(100.0f, 60.0f);
        Vector<float, 2> rectPos(800.0f + rectSize[0] * i, 450.0f);
        _rectangles.push_back({ rectPos, rectSize });
        Entity rect = _objectCoordinator.createModel2D("RectangleModel", "ColorShader");
        _rects.push_back(rect);
        _objectCoordinator.attachComponent<ColorComponent>(rect, Vector<float, 4>(0.0f, 0.0f, 1.0f, 1.0f));
        _objectCoordinator.attachComponent<PositionComponent2D>(rect, _rectangles[i].position);
        _objectCoordinator.attachComponent<SizeComponent2D>(rect, _rectangles[i].size);
    }

    _line = _objectCoordinator.createModel2D("LineModel1", "LineShader");
    _objectCoordinator.attachComponent<ColorComponent>(_line, Vector<float, 4>(0.0f, 1.0f, 1.0f, 1.0f));

    Vector<float, 2> circleOrigin = { 200.0f, 300.0f };
    _circle = _objectCoordinator.createModel2D("WhiteCircleModel", "CircleShader");
    _objectCoordinator.addFloat("CircleShader", "radius", 6.0f);
    _objectCoordinator.addFloat2("CircleShader", "origin", circleOrigin);
    _objectCoordinator.attachComponent<ColorComponent>(_circle, { 1.0f, 0.0f, 0.0f, 1.0f });
    _objectCoordinator.attachComponent<PositionComponent2D>(_circle, circleOrigin);
    _objectCoordinator.attachComponent<SizeComponent2D>(_circle, { 200.0f, 200.0f });

    _normalLine = _objectCoordinator.createModel2D("LineModel2", "LineShader");
    _objectCoordinator.hideEntity(_normalLine);
    _objectCoordinator.attachComponent<ColorComponent>(_normalLine, { 1.0f, 1.0f, 1.0f, 1.0f });

    _mouseRectangle = { { 0.0f, 0.0f }, { 50.0f, 75.0f } };
    _mouseRect = _objectCoordinator.createModel2D("WhiteRectangleModel", "TextureShader");
    _objectCoordinator.attachComponent<VelocityComponent2D>(_mouseRect, {});
    _objectCoordinator.attachComponent<PositionComponent2D>(_mouseRect, _mouseRectangle.position);
    _objectCoordinator.attachComponent<SizeComponent2D>(_mouseRect, _mouseRectangle.size);

    Entity idk = _objectCoordinator.createModel2D("RedRectangleModel", "TextureShader");
    _objectCoordinator.attachComponent<SizeComponent2D>(idk, { 300.0f, 300.0f });
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
    Vector<float, 2> rayDirection = mousePos - _mouseRectangle.position;
    Vector<float, 2> mouseRecVelocity = normalize(rayDirection) * 10.0f;
    VelocityComponent2D &prevVelocity = _objectCoordinator.getComponent<VelocityComponent2D>(_mouseRect);
    if (GLFWInput::getInstance(_window->getWindow())->isMousePressed(0))
        prevVelocity.v += mouseRecVelocity;
    
    bool showCircle = false;
    vector<Vector<float, 2>> normalLine;
    for (uint32 i = 0; i < _rectangles.size(); ++i)
    {
        if (_mouseRectangle.dynamicRecIntersect(prevVelocity.v, _rectangles[i], contactPoint, contactNormal, tHitNear, deltaTime))
        {
            // stop & slide
            prevVelocity.v += element_wise_multiply(contactNormal, element_wise_abs(prevVelocity.v)) * (1.0f - tHitNear);
        }

        // mouseRay collision with rect
        if (_rectangles[i].doesRayIntersect(_lineStart, mousePos - _lineStart, contactPoint, contactNormal, tHitNear) && tHitNear < 1.0f)
        {
            _objectCoordinator.updateComponent<ColorComponent>(_rects[i], Vector<float, 4>(1.0f, 1.0f, 0.0f, 1.0f));
            if (showCircle == false)
            {
                showCircle |= true;
                _objectCoordinator.showEntity(_circle);
                _objectCoordinator.updateComponent<PositionComponent2D>(_circle, contactPoint);
                _objectCoordinator.updateFloat2("CircleShader", "origin", contactPoint);

                normalLine = { contactPoint + contactNormal * 30.0f, contactPoint };
            }
        }
        else
        {
            _objectCoordinator.updateComponent<ColorComponent>(_rects[i], Vector<float, 4>(0.0f, 0.0f, 1.0f, 1.0f));
        }
    }
    Vector<float, 2> newMouseRectPosition = _mouseRectangle.position + prevVelocity.v * deltaTime;
    _objectCoordinator.updateComponent<PositionComponent2D>(_mouseRect, newMouseRectPosition);
    _mouseRectangle.position = newMouseRectPosition;

    if (showCircle)
    {
        _objectCoordinator.showEntity(_circle);
        _objectCoordinator.showEntity(_normalLine);
        _objectCoordinator.updateVBO_position2D(_normalLine, normalLine.data(), normalLine.size() * sizeof(normalLine[0]));
    }
    else
    {
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
                                 "TextureShader");
    _objectCoordinator.addShader(getShaderDir() + "2D/TriangleColor/vs.glsl",
                                 getShaderDir() + "2D/TriangleColor/fs.glsl",
                                 "ColorShader");
    _objectCoordinator.addShader(getShaderDir() + "2D/TriangleTextureColor/vs.glsl",
                                 getShaderDir() + "2D/TriangleTextureColor/fs.glsl",
                                 "TextureColorShader");
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

    _objectCoordinator.addTexture(getTextureDir() + "Red.png", "RedTexture");
}

void CollisionDevLayer::loadMaterials(void)
{
    _objectCoordinator.addMaterial("WhiteMaterial");
    _objectCoordinator.setDiffuse("WhiteMaterial", "WhiteTexture");

    _objectCoordinator.addMaterial("RedMaterial");
    _objectCoordinator.setDiffuse("RedMaterial", "RedTexture");

    _objectCoordinator.addMaterial("NullMaterial");
}

void CollisionDevLayer::loadModels(void)
{
    QuadMeshPrimitive2DTexture quadMeshPrimitive;
    LineMeshPrimitive2D lineMeshPrimitive;
    CircleMeshPrimitive2DTexture circleMeshPrimitive;

    _objectCoordinator.loadModel(&quadMeshPrimitive, "WhiteRectangleModel", "WhiteMaterial");
    _objectCoordinator.loadModel(&quadMeshPrimitive, "RedRectangleModel", "RedMaterial");
    _objectCoordinator.loadModel(&quadMeshPrimitive, "RectangleModel", "NullMaterial");
    _objectCoordinator.loadModel(&circleMeshPrimitive, "WhiteCircleModel", "NullMaterial");
    _objectCoordinator.loadModel(&lineMeshPrimitive, "LineModel1", "NullMaterial");
    _objectCoordinator.loadModel(&lineMeshPrimitive, "LineModel2", "NullMaterial");
}

void CollisionDevLayer::registerSystems(void)
{
    _objectCoordinator.registerSystem<CollisionSystem2D>(_window);
}

}
