#include "Layers/CollisionDevLayer.hpp"
#include "MeshPrimitives/QuadMeshPrimitive2DTexture.hpp"
#include "MeshPrimitives/CircleMeshPrimitive2DTexture.hpp"
#include "MeshPrimitives/LineMeshPrimitive2D.hpp"
#include "MeshPrimitives/ParticleQuadMeshPrimitive2DTexture.hpp"
#include "Log.hpp"
#include "ECS/Components/VelocityComponent2D.hpp"
#include "ECS/Components/PositionComponent2D.hpp"
#include "ECS/Components/SizeComponent2D.hpp"
#include "ECS/Components/RotationalComponent2D.hpp"
#include "ECS/Components/ColorComponent.hpp"
#include "ECS/Systems/CollisionSystem2D.hpp"
#include "ParticleTransforms/ExplosionParticleTransform.hpp"
#include "Inputs/GLFWInput.hpp"
#include "Debug/Stopwatch.hpp"

namespace GilqEngine
{

    CollisionDevLayer::CollisionDevLayer(MacWindow *window)
        : ILayer("QuadTree Layer", LayerType::overlay),
          _window(window),
          _objectCoordinator(window)
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

        int nOfRectangles = 5;
        for (int i = 0; i < nOfRectangles; ++i)
        {
            Vector<float, 2> rectSize(100.0f, 60.0f);
            Vector<float, 2> rectPos(800.0f + rectSize[0] * i, 450.0f);
            _rectangles.push_back({rectPos, rectSize});
            Entity rect = _objectCoordinator.createModel2D("RectangleModel", "ColorShader");
            _rects.push_back(rect);
            _objectCoordinator.attachComponent<ColorComponent>(rect, Vector<float, 4>(0.0f, 0.0f, 1.0f, 1.0f));
            _objectCoordinator.attachComponent<PositionComponent2D>(rect, _rectangles[i].position);
            _objectCoordinator.attachComponent<SizeComponent2D>(rect, _rectangles[i].size);
        }

        _line = _objectCoordinator.createModel2D("LineModel1", "LineShader");
        _objectCoordinator.attachComponent<ColorComponent>(_line, Vector<float, 4>(0.0f, 1.0f, 1.0f, 1.0f));

        Vector<float, 2> circleOrigin = {200.0f, 300.0f};
        _circle = _objectCoordinator.createModel2D("WhiteCircleModel", "CircleShader");
        _objectCoordinator.addFloat("CircleShader", "radius", 6.0f);
        _objectCoordinator.addFloat2("CircleShader", "origin", circleOrigin);
        _objectCoordinator.attachComponent<ColorComponent>(_circle, {1.0f, 0.0f, 0.0f, 1.0f});
        _objectCoordinator.attachComponent<PositionComponent2D>(_circle, circleOrigin);
        _objectCoordinator.attachComponent<SizeComponent2D>(_circle, {200.0f, 200.0f});

        _normalLine = _objectCoordinator.createModel2D("LineModel2", "LineShader");
        _objectCoordinator.hideEntity(_normalLine);
        _objectCoordinator.attachComponent<ColorComponent>(_normalLine, {1.0f, 1.0f, 1.0f, 1.0f});

        _mouseRectangle = {{0.0f, 0.0f}, {50.0f, 75.0f}};
        _mouseRect = _objectCoordinator.createModel2D("WhiteRectangleModel", "TextureShader");
        _objectCoordinator.attachComponent<VelocityComponent2D>(_mouseRect, {});
        _objectCoordinator.attachComponent<PositionComponent2D>(_mouseRect, _mouseRectangle.position);
        _objectCoordinator.attachComponent<SizeComponent2D>(_mouseRect, _mouseRectangle.size);
        // _objectCoordinator.hideEntity(_mouseRect);

        _objectCoordinator.addParticleTransform<ExplosionParticleTransform>("ExplosionTransform");
        _mouseParticleGenerator = _objectCoordinator.registerParticleGenerator(
            "ParticleModel",
            "ParticleShader",
            50, 2.0f,
            "ExplosionTransform");
        _objectCoordinator.updateGeneratorParticle(_mouseParticleGenerator,
                                                   {_mouseRectangle.position, {}, {1.0f, 1.0f, 0.0f, 1.0f}, {100.0f, 100.0f}, 1.0f});
        _objectCoordinator.updateGeneratorSpawnRate(_mouseParticleGenerator, 6);
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
        Vector<float, 2> _lineStart = {30.0f, 40.0f};
        vector<Vector<float, 2>> line = {
            _lineStart,
            mousePos};
        _objectCoordinator.updateBufferFloat2(_line, 0, line.data(), (u32)line.size());

        Vector<float, 2> contactPoint;
        Vector<float, 2> contactNormal;
        float tHitNear;

        // mouseRectangle collision with rect
        Vector<float, 2> rayDirection = mousePos - _mouseRectangle.position;
        Vector<float, 2> mouseRecVelocity = normalize(rayDirection) * 10.0f;
        VelocityComponent2D &prevVelocity = _objectCoordinator.getComponent<VelocityComponent2D>(_mouseRect);
        // if (GLFWInput::getInstance(_window->getWindow())->isMousePressed(0))
        // {
        //     prevVelocity.v += mouseRecVelocity;
        // }
        /*
        * a = a;
        * v = at + v(o)
        * s = a/2 t^2 + vt + s(0)
        */
        r32 ddt = 250.0f;
        GLFWInput *input = GLFWInput::getInstance(_window->getWindow());
        if (input->isKeyPressed(GLFW_KEY_W))
        {
            prevVelocity.v += Vector<r32, 2>(0.0f, -1.0f) * ddt * deltaTime;
        }
        if (input->isKeyPressed(GLFW_KEY_S))
        {
            prevVelocity.v += Vector<r32, 2>(0.0f, 1.0f) * ddt * deltaTime;
        }
        if (input->isKeyPressed(GLFW_KEY_A))
        {
            prevVelocity.v += Vector<r32, 2>(-1.0f, 0.0f) * ddt * deltaTime;
        }
        if (input->isKeyPressed(GLFW_KEY_D))
        {
            prevVelocity.v += Vector<r32, 2>(1.0f, 0.0f) * ddt * deltaTime;
        }
        // LOG(prevVelocity);

        bool showCircle = false;
        vector<Vector<float, 2>> normalLine;
        // add rectangles that falls in the extended the mouse rectangle (based on its velocity)
        RectangleColliderComponent extendedMouseRectangle = extendRectangle(_mouseRectangle, prevVelocity.v, deltaTime);
        vector<RectangleColliderComponent> testedRectangles;
        for (u32 i = 0; i < _rectangles.size(); ++i)
        {
            if (extendedMouseRectangle.doesRecIntersect(_rectangles[i]))
            {
                testedRectangles.push_back(_rectangles[i]);
            }
        }

        // sort the tested rectangles based on their distance from the mouse rectangle (their collision will be resolved in that order)
        sort(testedRectangles.begin(), testedRectangles.end(), [&](const RectangleColliderComponent &l, const RectangleColliderComponent &r)
            {
                float leftLengthSq =  magnitudeSq(l.position - _mouseRectangle.position);
                float rightLengthSq =  magnitudeSq(r.position - _mouseRectangle.position);
            
                return (leftLengthSq < rightLengthSq);
            }
        );

        // resolve the collisions against the tested rectangles
        for (u32 i = 0; i < testedRectangles.size(); ++i)
        {
            if (_mouseRectangle.dynamicRecIntersect(prevVelocity.v, testedRectangles[i], contactPoint, contactNormal, tHitNear, deltaTime))
            {
                // stop & slide
                prevVelocity.v += element_wise_multiply(contactNormal, element_wise_abs(prevVelocity.v)) * (1.0f - tHitNear);
            }

            // mouseRay collision with rect
            if (testedRectangles[i].doesRayIntersect(_lineStart, mousePos - _lineStart, contactPoint, contactNormal, tHitNear) && tHitNear < 1.0f)
            {
                _objectCoordinator.updateComponent<ColorComponent>(_rects[i], Vector<float, 4>(1.0f, 1.0f, 0.0f, 1.0f));
                if (showCircle == false)
                {
                    showCircle = true;
                    _objectCoordinator.showEntity(_circle);
                    _objectCoordinator.updateComponent<PositionComponent2D>(_circle, contactPoint);
                    _objectCoordinator.updateFloat2("CircleShader", "origin", contactPoint);

                    normalLine = {contactPoint + contactNormal * 30.0f, contactPoint};
                }
            }
            else
            {
                _objectCoordinator.updateComponent<ColorComponent>(_rects[i], Vector<float, 4>(0.0f, 0.0f, 1.0f, 1.0f));
            }
        }
        Vector<float, 2> newMouseRectPosition = _mouseRectangle.position + prevVelocity.v * deltaTime;
        if (newMouseRectPosition[0] < 0.0f) newMouseRectPosition[0] = (r32)_window->getWidth();
        if (newMouseRectPosition[0] > (r32)_window->getWidth()) newMouseRectPosition[0] = 0.0f;
        if (newMouseRectPosition[1] < 0.0f) newMouseRectPosition[1] = (r32)_window->getHeight();
        if (newMouseRectPosition[1] > (r32)_window->getHeight()) newMouseRectPosition[1] = 0.0f;
        _objectCoordinator.updateComponent<PositionComponent2D>(_mouseRect, newMouseRectPosition);
        _mouseRectangle.position = newMouseRectPosition;

        _objectCoordinator.updateGeneratorParticleVelocity(_mouseParticleGenerator, 100.0f * normalize(-prevVelocity.v));

        if (showCircle)
        {
            _objectCoordinator.showEntity(_circle);
            _objectCoordinator.showEntity(_normalLine);
            _objectCoordinator.updateBufferFloat2(_normalLine, 0, normalLine.data(), (u32)normalLine.size());
        }
        else
        {
            _objectCoordinator.hideEntity(_circle);
            _objectCoordinator.hideEntity(_normalLine);
        }

        _objectCoordinator.updateGeneratorParticlePosition(_mouseParticleGenerator, _mouseRectangle.position);
        BEGIN_TIMED_BLOCK(Update);
        _objectCoordinator.update(deltaTime);
        END_TIMED_BLOCK(Update);
    }

    void CollisionDevLayer::onRender()
    {
        BEGIN_TIMED_BLOCK(Render);
        _objectCoordinator.drawObjects2D();
        END_TIMED_BLOCK(Render);
        PrintCycleCounters();
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
        _objectCoordinator.addShader(getShaderDir() + "2D/ParticleColorTexture/vs.glsl",
                                     getShaderDir() + "2D/ParticleColorTexture/fs.glsl",
                                     "ParticleShader");
    }

    void CollisionDevLayer::loadTextures(void)
    {
        _objectCoordinator.addTexture(getTextureDir() + "White.png", "WhiteTexture");

        _objectCoordinator.addTexture(getTextureDir() + "Red.png", "RedTexture");

        _objectCoordinator.addTexture(getTextureDir() + "Grass.png", "GrassTexture");
    }

    void CollisionDevLayer::loadMaterials(void)
    {
        _objectCoordinator.addMaterial("WhiteMaterial");
        _objectCoordinator.setDiffuse("WhiteMaterial", "WhiteTexture");

        _objectCoordinator.addMaterial("RedMaterial");
        _objectCoordinator.setDiffuse("RedMaterial", "RedTexture");

        _objectCoordinator.addMaterial("GrassMaterial");
        _objectCoordinator.setDiffuse("GrassMaterial", "GrassTexture");

        _objectCoordinator.addMaterial("NullMaterial");
    }

    void CollisionDevLayer::loadModels(void)
    {
        QuadMeshPrimitive2DTexture quadMeshPrimitive2DTexture;
        LineMeshPrimitive2D lineMeshPrimitive;
        CircleMeshPrimitive2DTexture circleMeshPrimitive;
        ParticleQuadMeshPrimitive2DTexture particleQuadMeshPrimitive2DTexture;

        _objectCoordinator.loadModel(&quadMeshPrimitive2DTexture, "WhiteRectangleModel", "WhiteMaterial");
        _objectCoordinator.loadModel(&quadMeshPrimitive2DTexture, "RedRectangleModel", "RedMaterial");
        _objectCoordinator.loadModel(&quadMeshPrimitive2DTexture, "RectangleModel", "NullMaterial");
        _objectCoordinator.loadModel(&circleMeshPrimitive, "WhiteCircleModel", "NullMaterial");
        _objectCoordinator.loadModel(&lineMeshPrimitive, "LineModel1", "NullMaterial");
        _objectCoordinator.loadModel(&lineMeshPrimitive, "LineModel2", "NullMaterial");
        _objectCoordinator.loadModel(&particleQuadMeshPrimitive2DTexture, "ParticleModel", "WhiteMaterial");
    }

    void CollisionDevLayer::registerSystems(void)
    {
        _objectCoordinator.registerSystem<CollisionSystem2D>(_window);
    }

}
