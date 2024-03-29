#include "Layers/BytecodeLayer.hpp"
#include "Events/EventDispatcher.hpp"
#include "Events/MouseEvents/MouseButtonPressedEvent.hpp"
#include "MeshPrimitives/QuadMeshPrimitive3D.hpp"
#include "ECS/Components/Light/PointLightSourceComponent.hpp"
#include "ECS/Components/SizeComponent3D.hpp"
#include "ECS/Components/RotationalComponent3D.hpp"
#include "ECS/Components/PositionComponent3D.hpp"
#include "Log.hpp"

namespace GilqEngine
{

BytecodeLayer::BytecodeLayer(MacWindow *window)
    : ILayer("Bytecode Layer", LayerType::overlay),
      _window(window),
      _objectCoordinator(window)
{

}

void BytecodeLayer::loadShaders(void)
{
    _objectCoordinator.addShader(getShaderDir() + "3D/Triangle/vs.glsl",
                                 getShaderDir() + "3D/Triangle/fs.glsl",
                                 "BoxShader");
    _objectCoordinator.addShader(getShaderDir() + "3D/LightSource/vs.glsl",
                                 getShaderDir() + "3D/LightSource/fs.glsl",
                                 "LightShader");
}

void BytecodeLayer::loadTextures(void)
{
    _objectCoordinator.addTexture(getTextureDir() + "Add.png",
                                  "AddTexture");
    _objectCoordinator.addTexture(getTextureDir() + "ShowTopValue.png",
                                  "ShowTopValueTexture");
}

void BytecodeLayer::loadMaterials(void)
{
    _objectCoordinator.addMaterial("AddMaterial");
    _objectCoordinator.setDiffuse("AddMaterial", "AddTexture");
    _objectCoordinator.setAmbient("AddMaterial", "AddTexture");

    _objectCoordinator.addMaterial("ShowTopValueMaterial");
    _objectCoordinator.setDiffuse("ShowTopValueMaterial", "ShowTopValueTexture");
    _objectCoordinator.setAmbient("ShowTopValueMaterial", "ShowTopValueTexture");
}

void BytecodeLayer::loadModels(void)
{
    QuadMeshPrimitive3D quadMeshPrimitive;

    _objectCoordinator.loadModel(&quadMeshPrimitive, "AddModel", "AddMaterial");
    _objectCoordinator.loadModel(&quadMeshPrimitive, "ShowTopValueModel", "ShowTopValueMaterial");
}

void BytecodeLayer::registerSystems(void)
{
}

void BytecodeLayer::onAttach()
{
    loadShaders();
    loadTextures();
    loadMaterials();
    loadModels();

    registerSystems();

    float upperLeftX = 300.0f;
    float upperLeftY = 150.0f;
    float width = 100.0f;
    float height = 50.0f;
    _rectangleElements.push_back({upperLeftX, upperLeftY, width, height});
    Entity addBox = _objectCoordinator.createModel3D("AddModel", "BoxShader");
    _objectCoordinator.attachComponent<PositionComponent3D>(addBox, { upperLeftX + width / 2.0f, 0.0f, upperLeftY + height / 2.0f });
    _objectCoordinator.attachComponent<SizeComponent3D>(addBox, { width, 1.0f, height });
    _objectCoordinator.attachComponent<RotationalComponent3D>(addBox, { degToRad(90.0f), 0.0f, Vector<float, 3>(1.0f, 0.0f, 0.0f) });
    float upperLeftX2 = 410.0f;
    _rectangleElements.push_back({upperLeftX2, upperLeftY, width, height});
    Entity showBox = _objectCoordinator.createModel3D("ShowTopValueModel", "BoxShader");
    _objectCoordinator.attachComponent<PositionComponent3D>(showBox, { upperLeftX2 + width / 2.0f, 0.0f, upperLeftY + height / 2.0f });
    _objectCoordinator.attachComponent<SizeComponent3D>(showBox, { width, 1.0f, height });
    _objectCoordinator.attachComponent<RotationalComponent3D>(showBox, { degToRad(90.0f), 0.0f, Vector<float, 3>(1.0f, 0.0f, 0.0f) });
    
    PointLightSourceComponent pointLightSourceComponent;
    pointLightSourceComponent._color = Vector<float, 4>(1.0f, 0.0f, 0.0f, 1.0f);
    pointLightSourceComponent._ambientStrength = 0.1f;
    pointLightSourceComponent._diffuseStrength = 1.0f;
    pointLightSourceComponent._specularStrength = 0.5f;
    pointLightSourceComponent._position = Vector<float, 3>(0.0f, 10.0f, 0.0f);
    pointLightSourceComponent._attenuationFactor_constant = 1.0f;
    pointLightSourceComponent._attenuationFactor_linear = 0.003f;
    pointLightSourceComponent._attenuationFactor_quadratic = 0.00001f;

    Entity pointLightSourceEntity = _objectCoordinator.createModel3D("AddModel", "LightShader");
    _objectCoordinator.attachComponent<PointLightSourceComponent>(pointLightSourceEntity, pointLightSourceComponent);
    _objectCoordinator.attachComponent<PositionComponent3D>(pointLightSourceEntity, { 0.0f, 10.0f, 0.0f });
    _objectCoordinator.attachComponent<RotationalComponent3D>(pointLightSourceEntity, { degToRad(90.0f), 0.0f, Vector<float, 3>(1.0f, 0.0f, 0.0f) });
}

void BytecodeLayer::onDetach()
{

}

void BytecodeLayer::onEvent(IEvent &e)
{
    EventDispatcher dispatcher(e);
    dispatcher.dispatch<MouseButtonPressedEvent>([this](IEvent& e) -> bool {
        MouseButtonPressedEvent ev = dynamic_cast<MouseButtonPressedEvent &>(e);
        double mouseX = _window->getXMousePosition();
        double mouseY = _window->getYMousePosition();
        LOG("Mouse clicked, coordinates: " << mouseX << " " << mouseY);
        for (const auto& rectangle : _rectangleElements)
        {
            if (rectangle.isInside((float)mouseX, (float)mouseY))
            {
                LOG("Box is clicked");
                return (true);
            }
        }
        return (false);
    });
}

void BytecodeLayer::onUpdate(float deltaTime)
{
    _objectCoordinator.update(deltaTime);
}

void BytecodeLayer::onRender()
{
    Vector<float, 3> camPosition(0.0f, 10.0f, (float)_window->getHeight());
    _objectCoordinator.drawObjects3D(
        camPosition,
        look_at(camPosition,
                camPosition + Vector<float, 3>(0.0f, -1.0f, 0.0f),
                Vector<float, 3>(0.0f, 0.0f, -1.0f)),
        projection_matrix_ortho(0.0f,
                                (float)_window->getWidth(),
                                0.0f,
                                (float)_window->getHeight(),
                                -100.0f, 100.0f));
}

}
