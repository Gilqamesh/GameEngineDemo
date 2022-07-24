#include "Layers/ModelLoadLayer.hpp"
#include "Math/Utils.hpp"
#include "Debug/Trace.hpp"
#include "ECS/Components/RotationalComponent.hpp"
#include "ECS/Components/PositionComponent3D.hpp"
#include "ECS/Components/VelocityComponent3D.hpp"
#include "ECS/Components/EnergyComponent.hpp"
#include "ECS/Components/MassComponent.hpp"
#include "ECS/Components/Light/PointLightSourceComponent.hpp"
#include "ECS/Systems/RotationSystem.hpp"
#include "ECS/Systems/DisplacementSystem.hpp"
#include "ECS/Systems/GravitySystem.hpp"
#include "ECS/Systems/EnergySystem.hpp"
#include "ECS/Systems/BoundaryBoxSystem.hpp"
#include "Factories/CubeMeshFactory.hpp"
#include "Factories/QuadMeshFactory3D.hpp"
#include "Log.hpp"

namespace GilqEngine
{

ModelLoadLayer::ModelLoadLayer(MacWindow *macWindow, ICamera *camera)
    : ILayer("Model Load Layer", LayerType::regular),
    _macWindow(macWindow),
    _camera(camera),
    _projection(projection_matrix_perspective(
        degToRad(85.0f),
        (float)_macWindow->getWidth() / (float)_macWindow->getHeight(),
        0.1f,
        1000.0f
    ))
{
    TRACE();
}

void ModelLoadLayer::onAttach()
{
    TRACE();
    _macWindow->enableDepthTest();
    _macWindow->enablePolygonMode_Fill();
    _macWindow->enableBlending();
    _macWindow->setBlendFunc(GL_SRC_COLOR, GL_ONE_MINUS_SRC_ALPHA);
    loadShaders();
    loadTextures();
    loadMaterials();
    loadModels();

    _objectCoordinator.registerSystem<GravitySystem>();
    _objectCoordinator.registerSystem<EnergySystem>();
    _objectCoordinator.registerSystem<RotationSystem>();
    _objectCoordinator.registerSystem<BoundaryBoxSystem>();
    _objectCoordinator.registerSystem<DisplacementSystem>();

    for (unsigned int i = 0; i < 100; ++i)
    {
        float scale = getRand(0.1f, 1.0f);
        Vector<float, 3> position(getRand(-100.0f, 100.0f), getRand(0.0f, 100.0f), getRand(-100.0f, 100.0f));
        position -= Vector<float, 3>(+100.0f, 0.0f, +100.0f);
        Entity sphere = _objectCoordinator.createModel(
            "Backpack Model",
            "Triangle Shader",
            scale_matrix(Vector<float, 3>(scale, scale, scale))
        );
        _models.insert(sphere);
        _objectCoordinator.attachComponent<PositionComponent3D>(sphere, position);
        _objectCoordinator.attachComponent<VelocityComponent3D>(sphere, {
            getRand(-20.0f, 20.0f), getRand(-40.0f, 40.0f), getRand(-20.0f, 20.0f)
        });
        _objectCoordinator.attachComponent<RotationalComponent>(sphere, {
            0.0f, getRand(10.0f, 50.0f), Vector<float, 3>()
        });
        _objectCoordinator.attachComponent<MassComponent>(sphere, {
            scale * 10.0f
        });
        _objectCoordinator.attachComponent<EnergyComponent>(sphere, {0.0f});
    }
    
    // _models.insert(_objectCoordinator.createModel(
    //     "Window Box Model",
    //     "Triangle Shader",
    //     scale_matrix(Vector<GLfloat, 3>(22.0f, 22.0f, 22.0f)),
    //     0.5f));

    // for (unsigned int i = 0; i < 5; ++i)
    // {
    //     for (unsigned int j = 0; j < 5; ++j)
    //     {
    //         Entity grass = _objectCoordinator.createModel(
    //             "Grass Model",
    //             "Triangle Shader",
    //             rotation_matrix(degToRad(90.0f), Vector<float, 3>(-1.0f, 0.0f, 0.0f))
    //             * translation_matrix(Vector<float, 3>((float)i * 4 - 5.0f, -10.0f, (float)j * 4 - 5.0f)));
    //         _models.insert(grass);
    //     }
    // }
    for (unsigned int i = 0; i < 20; ++i)
    {
        for (unsigned int j = 0; j < 20; ++j)
        {
            float scale = 10.0f;
            Entity dirt = _objectCoordinator.createModel(
                "Dirt Model",
                "Triangle Shader",
                rotation_matrix(degToRad(90.0f), Vector<float, 3>(-1.0f, 0.0f, 0.0f))
                * scale_matrix(Vector<float, 3>(scale, scale, scale))
                * translation_matrix(Vector<float, 3>((float)i * scale - 10.0f * scale, -15.0f, (float)j * scale - 10.0f * scale)));
            _models.insert(dirt);
        }
    }

    // for (unsigned int i = 0; i < 30; ++i)
    // {
    //     for (unsigned int j = 0; j < 30; ++j)
    //     {
    //         Entity grass = _objectCoordinator.createModel(
    //             "Grass Model",
    //             "Triangle Shader",
    //             rotation_matrix(90.0f, Vector<float, 3>(-1.0f, 0.0f, 0.0f))
    //             * translation_matrix(Vector<float, 3>(float(i) /*+ (i & 1) * 0.25f*/ - 15.0f, -5.0f, float(j) + ((i & 1) ^ 1) * 0.5f - 15.0f)));
    //         _models.insert(grass);
    //     }
    // }

    for (int i = 0; i < 4; ++i)
    {
        Vector<float, 3> position(((i & 1) * 2 - 1) * 20.0f, 100.0f, (((i & 2) >> 1) * 2 - 1) * 20.0f);
        Entity sun = _objectCoordinator.createModel(
            "White Box Model",
            "LightSource Shader",
            translation_matrix(position)
        );
        _models.insert(sun);
        PointLightSourceComponent pointLight;
        pointLight._color = Vector<float, 4>(1.0f, 1.0f, 1.0f, 1.0f);
        pointLight._position = position;
        pointLight._attenuationFactor_constant = 1.0f;
        pointLight._attenuationFactor_linear = 0.003f;
        pointLight._attenuationFactor_quadratic = 0.00001f;
        pointLight._ambientStrength = 0.1f;
        pointLight._diffuseStrength = 1.0f;
        pointLight._specularStrength = 0.5f;

        _objectCoordinator.attachComponent<PointLightSourceComponent>(sun, pointLight);
    }
}

void ModelLoadLayer::onDetach()
{
    TRACE();
    _macWindow->disableDepthTest();
    _macWindow->disableBlending();
}

void ModelLoadLayer::onEvent(IEvent &e)
{
    TRACE();
    (void)e;
}

void ModelLoadLayer::onUpdate(float deltaTime)
{
    TRACE();
    _objectCoordinator.onUpdate(deltaTime);
}

void ModelLoadLayer::onRender()
{
    TRACE();
    _objectCoordinator.drawObjects3D(
        _camera->getPosition(),
        _camera->getViewMatrix(),
        projection_matrix_perspective(
            degToRad(85.0f),
            (GLfloat)_macWindow->getWidth() / (GLfloat)_macWindow->getHeight(),
            0.1f,
            1000.0f)
    );
}

void ModelLoadLayer::loadShaders()
{
    TRACE();
    _objectCoordinator.addShader(
        getShaderDir() + "3D/TriangleLight/vs.glsl",
        getShaderDir() + "3D/TriangleLight/fs.glsl",
        "Triangle Shader"
    );
    _objectCoordinator.addShader(
        getShaderDir() + "3D/LightSource/vs.glsl",
        getShaderDir() + "3D/LightSource/fs.glsl",
        "LightSource Shader"
    );
}

void ModelLoadLayer::loadTextures()
{
    TRACE();
    _objectCoordinator.addTexture(
        getTextureDir() + "Window.png",
        "Window Texture"
    );
    _objectCoordinator.addTexture(
        getTextureDir() + "White.png",
        "White Texture"
    );
    _objectCoordinator.addTexture(
        getTextureDir() + "Red.png",
        "Red Texture"
    );
    _objectCoordinator.addTexture(
        getTextureDir() + "Grass.png",
        "Grass Texture"
    );
    _objectCoordinator.addTexture(
        getTextureDir() + "Dirt.png",
        "Dirt Texture"
    );
}

void ModelLoadLayer::loadMaterials()
{
    TRACE();
    _objectCoordinator.addMaterial("Window Material");
    _objectCoordinator.setDiffuse("Window Material", "Window Texture");
    _objectCoordinator.setAmbient("Window Material", "Window Texture");

    _objectCoordinator.addMaterial("White Material");
    _objectCoordinator.setAmbient("White Material", "White Texture");
    _objectCoordinator.setDiffuse("White Material", "White Texture");

    _objectCoordinator.addMaterial("Red Material");
    _objectCoordinator.setAmbient("Red Material", "Red Texture");
    _objectCoordinator.setDiffuse("Red Material", "Red Texture");

    _objectCoordinator.addMaterial("Grass Material");
    _objectCoordinator.setAmbient("Grass Material", "Grass Texture");
    _objectCoordinator.setDiffuse("Grass Material", "Grass Texture");
    _objectCoordinator.setSpecular("Grass Material", "Grass Texture");

    _objectCoordinator.addMaterial("Dirt Material");
    _objectCoordinator.setAmbient("Dirt Material", "Dirt Texture");
    _objectCoordinator.setDiffuse("Dirt Material", "Dirt Texture");
    _objectCoordinator.setSpecular("Dirt Material", "Dirt Texture");
}

void ModelLoadLayer::loadModels()
{
TRACE();
    _objectCoordinator.loadModel(
        getModelDir() + "backpack/backpack.obj",
        "Backpack Model"
    );
    _objectCoordinator.loadModel(
        getModelDir() + "grass/scene.gltf",
        "Grass Model"
    );
    // _objectCoordinator.loadModel(
    //     "C:/Users/Gilqamesh/Desktop/Projects/GameEngine/resources/models/grass/Grass.fbx",
    //     "Grass Model"
    // );
    CubeMeshFactory cubeMeshFactory; // there is no purpose for this object to exist
    _objectCoordinator.loadModel(&cubeMeshFactory, "Red Box Model", "Red Material");
    _objectCoordinator.loadModel(&cubeMeshFactory, "White Box Model", "White Material");
    _objectCoordinator.loadModel(&cubeMeshFactory, "Window Box Model", "Window Material");
    QuadMeshFactory3D quadMeshFactory;
    _objectCoordinator.loadModel(&quadMeshFactory, "Dirt Model", "Dirt Material");
}

}
