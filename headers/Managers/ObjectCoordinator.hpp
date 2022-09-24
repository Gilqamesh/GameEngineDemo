#ifndef OBJECTCOORDINATOR_HPP
#define OBJECTCOORDINATOR_HPP

#include "Managers/MaterialManager.hpp"
#include "Managers/ModelManager.hpp"
#include "Managers/ShaderManager.hpp"
#include "Managers/TextureManager.hpp"
#include "Managers/ParticleGeneratorManager.hpp"
#include "Interfaces/IMeshPrimitive.hpp"
#include "Math/Matrix.hpp"
#include "ECS/Systems/Light/DirectionalLightSourceSystem.hpp"
#include "ECS/Systems/Light/PointLightSourceSystem.hpp"
#include "ECS/Systems/Light/SpotLightSourceSystem.hpp"
#include "ECS/Components/Light/DirectionalLightSourceComponent.hpp"
#include "ECS/Components/Light/PointLightSourceComponent.hpp"
#include "ECS/Components/Light/SpotLightSourceComponent.hpp"
#include "ECS/Components/PositionComponent2D.hpp"
#include "ECS/Components/PositionComponent3D.hpp"
#include "ECS/Components/ColorComponent.hpp"
#include "ECS/Components/SizeComponent2D.hpp"
#include "Windows/MacWindow.hpp"

namespace GilqEngine
{

    // goal: make this class as user friendly as possible
    class ObjectCoordinator
    {
        MaterialManager _materialManager;
        ShaderManager _shaderManager;
        TextureManager _textureManager;
        ModelManager _modelManager;
        ParticleGeneratorManager _particleGeneratorManager;
        MacWindow *_window;

        unordered_set<Entity, hash<int>> _aliveEntities;
        // NOTE(david): Currently I don't technically need this as the caller knows the Entities to set alive
        unordered_set<Entity, hash<int>> _deadEntities;

        unordered_set<GeneratorId> _runningGenerators;
        // NOTE(david): This is not needed currently as technically the caller knows about the GeneratorId
        unordered_set<GeneratorId> _idleGenerators;

        DirectionalLightSourceSystem *_directionalLightSourceSystem;
        PointLightSourceSystem *_pointLightSourceSystem;
        SpotLightSourceSystem *_spotLightSourceSystem;

    public:
        ObjectCoordinator(MacWindow *macWindow);
        ~ObjectCoordinator();

        // ************************************************************************** //
        //                              Material Methods                              //
        // ************************************************************************** //

        /*
         * Adds the material to the material library
         */
        void addMaterial(const string &materialName);

        /*
         * Setters to change texture of material
         */
        void setAmbient(const string &materialName, const string &textureName);
        void setDiffuse(const string &materialName, const string &textureName);
        void setSpecular(const string &materialName, const string &textureName);
        void setEmission(const string &materialName, const string &textureName);

        // ************************************************************************** //
        //                               Shader Methods                               //
        // ************************************************************************** //

        /*
         * Loads and adds a shader to the shader library
         */
        void addShader(
            const string &vsPath,
            const string &fsPath,
            const string &shaderName);

        /*
         * Adds and remembers uniform to the shader
         */
        void addInt(const string &shaderName, const string &uniformName, GLint value);
        void addIntArr(const string &shaderName, const string &uniformName, int *value, u32 size);
        void addFloat(const string &shaderName, const string &uniformName, GLfloat value);
        void addFloat2(const string &shaderName, const string &uniformName, const Vector<GLfloat, 2> &value);
        void addFloat3(const string &shaderName, const string &uniformName, const Vector<GLfloat, 3> &value);
        void addFloat4(const string &shaderName, const string &uniformName, const Vector<GLfloat, 4> &value);
        void addMat4(const string &shaderName, const string &uniformName, const Matrix<GLfloat, 4, 4> &value);

        /*
         * Updates the stored uniform in the shader
         * Only call these methods if updating the uniform is necessary
         */
        void updateInt(const string &shaderName, const string &uniformName, GLint value);
        void updateIntArr(const string &shaderName, const string &uniformName, int *value, u32 size);
        void updateFloat(const string &shaderName, const string &uniformName, GLfloat value);
        void updateFloat2(const string &shaderName, const string &uniformName, const Vector<GLfloat, 2> &value);
        void updateFloat3(const string &shaderName, const string &uniformName, const Vector<GLfloat, 3> &value);
        void updateFloat4(const string &shaderName, const string &uniformName, const Vector<GLfloat, 4> &value);
        void updateMat4(const string &shaderName, const string &uniformName, const Matrix<GLfloat, 4, 4> &value);

        // TODO(david): This is only used in ParticleGenerator at the moment, get rid of this
        Shader *getShader(const string &shaderName);

        // ************************************************************************** //
        //                              Texture Methods                               //
        // ************************************************************************** //

        /*
         * Loads and adds a texture to the texture library
         */
        void addTexture(
            const string &texturePath,
            const string &textureName);
        void addTexture(
            const char *texturePath,
            const string &textureName);

        // ************************************************************************** //
        //                               Model Methods                                //
        // ************************************************************************** //

        /*
         * Order of registraton matters
         * Once registered, the system will be updated when calling 'onUpdate'
         */
        template <class System, typename... Args>
        void registerSystem(const Args &...args)
        {
            TRACE();
            _modelManager.registerSystem<System>(args...);
        }

        /*
         * Loads in Model object under 'modelName' for later retrieval
         */
        void loadModel(
            const string &modelPath,
            const string &modelName);

        /*
         * Loads model from a meshPrimitive
         */
        void loadModel(
            IMeshPrimitive *meshPrimitive,
            const string &modelName,
            const string &materialName);

        // TODO(david): This is only used in ParticleGenerator at the moment, get rid of this
        Model *getModel(const string &modelName);

        /*
         * Returns an already loaded model as a model object
         */
        Entity createModel2D(const string &modelName, const string &shaderName);
        Entity createModel3D(const string &modelName, const string &shaderName);

        /*
         * Disable/Enable entity for update and render
         */
        void hideEntity(Entity entity);
        void showEntity(Entity entity);

        // ************************************************************************** //
        //                          ParticleGenerator Methods                         //
        // ************************************************************************** //

        /**
         * @brief Registers an existing particle generator to the update / render queue with a unique name.
         * @param generatorName     Name of the particle generator.
         * @param modelName         Name of the Model the particle generator will use to spawn particles.
         * @param shaderName        Name of the Shader to be used to render the particles.
         * @param maxNewParticlesPerFrame   Max number of new particles spawned each frame.
         * @param maxLifeTime               Max life of particle when spawned.
         * @param particleTransform Optional, name of the Particle Transform.
         *                          If not supplied, a default one is used.
         * @return unique id for the generator registered
         */
        GeneratorId registerParticleGenerator(
            const string &modelName,
            const string &shaderName,
            u32 maxNewParticlesPerFrame,
            float maxLifeTime,
            const string &particleTransform = "DefaultParticleTransform");

        template <typename ParticleTransform>
        void addParticleTransform(const string &transformName)
        {
            TRACE();
            _particleGeneratorManager.addParticleTransform<ParticleTransform>(transformName);
        }

        /**
         * Update methods for the generator
         */
        void updateGeneratorParticleTransform(GeneratorId generatorId, const string &transformName);
        void updateGeneratorShader(GeneratorId generatorId, const string &shaderName);
        void updateGeneratorModel(GeneratorId generatorId, const string &modelName);
        void updateGeneratorSpawnRate(GeneratorId generatorId, u32 nOfParticlesToSpawn);
        void updateGeneratorParticle(GeneratorId generatorId, const Particle &particle);
        void updateGeneratorParticlePosition(GeneratorId generatorId, Vector<float, 2> position);
        void updateGeneratorParticleVelocity(GeneratorId generatorId, Vector<float, 2> velocity);
        void updateGeneratorParticleColor(GeneratorId generatorId, const Vector<float, 4> &color);
        void updateGeneratorParticleSize(GeneratorId generatorId, Vector<float, 2> size);
        void updateGeneratorParticleLife(GeneratorId generatorId, float life);

        void stopGenerator(GeneratorId generatorId);
        void startGenerator(GeneratorId generatorId);

        // ************************************************************************** //
        //                                 Own Methods                                //
        // ************************************************************************** //

        /*
         * Attaches a component to an entity object
         */
        template <class Component>
        void attachComponent(Entity object, const Component &component)
        {
            TRACE();
            _modelManager.attachComponent<Component>(object, component);
        }

        template <typename Component>
        void updateComponent(Entity object, const Component &component)
        {
            TRACE();
            _modelManager.updateComponent<Component>(object, component);
        }

        template <typename Component>
        Component &getComponent(Entity entity)
        {
            TRACE();
            return (_modelManager.getComponent<Component>(entity));
        }

        /* Currently this updates all the meshes owned by the model.. not good..
         * Caller's responsibility:
         *      - Only call these functions if the specific Buffer Object is dynamically set
         * Also important note: one instance of a model that has dynamic vbo cant be used on
         * multiple entities as they'd transform each others data.
         */
        void updateBufferFloat2(Entity object, u32 layoutIndex, const void *data, u32 numberOfUpdates);
        void updateBufferFloat3(Entity object, u32 layoutIndex, const void *data, u32 numberOfUpdates);
        void updateBufferFloat4(Entity object, u32 layoutIndex, const void *data, u32 numberOfUpdates);
        void updateBufferMat4(Entity object, u32 layoutIndex, const void *data, u32 numberOfUpdates);
        void updateIBO(Entity object, const void *data, GLuint count);

        /**
         * 1. Updates Particle Generators
         * 2. Updates all systems by order of their registration
         */
        void update(float deltaTime);

        /**
         * 2D Renderer
         */
        void drawObjects2D(void);

        /**
         * 3D Renderer
         * 1. Draw opaque objects
         * 2. Sort all transparent objects based on their distance from camera
         * 3. Draw all transparent objects in sorted order
         */
        void drawObjects3D(
            const Vector<float, 3> &cameraPosition, // there should be a camera position component that updates for all opaque objects
            const Matrix<float, 4, 4> &view,
            const Matrix<float, 4, 4> &projection);

        /*
         * Destroys all entities
         * Unloads all models
         * Unloads all textures
         * Unloads all shaders
         * Unloads all materials
         */
        void clear(void);

        /*
         * Displays all entity's components
         */
        void print(void);
    };

}

#endif
