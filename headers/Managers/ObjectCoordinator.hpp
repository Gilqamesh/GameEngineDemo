#ifndef OBJECTCOORDINATOR_HPP
# define OBJECTCOORDINATOR_HPP

# include "Managers/MaterialManager.hpp"
# include "Managers/ModelManager.hpp"
# include "Managers/ShaderManager.hpp"
# include "Managers/TextureManager.hpp"
# include "Interfaces/IMeshFactory.hpp"
# include "Math/Matrix.hpp"
# include "ECS/Systems/Light/DirectionalLightSourceSystem.hpp"
# include "ECS/Systems/Light/PointLightSourceSystem.hpp"
# include "ECS/Systems/Light/SpotLightSourceSystem.hpp"
# include "ECS/Components/Light/DirectionalLightSourceComponent.hpp"
# include "ECS/Components/Light/PointLightSourceComponent.hpp"
# include "ECS/Components/Light/SpotLightSourceComponent.hpp"
# include "ECS/Components/ModelMatrixComponent.hpp"
# include "ECS/Components/PositionComponent2D.hpp"
# include "ECS/Components/PositionComponent3D.hpp"
# include "ECS/Components/ColorComponent.hpp"

namespace GilqEngine
{

// goal: make this class as user friendly as possible
class ObjectCoordinator
{
MaterialManager         _materialManager;
ShaderManager           _shaderManager;
TextureManager          _textureManager;
ModelManager            _modelManager;

unordered_set<Entity, hash<int>>   _aliveEntities;
// NOTE(david): Currently I don't technically need this as the caller knows the Entities to set alive
unordered_set<Entity, hash<int>>   _deadEntities;

DirectionalLightSourceSystem *_directionalLightSourceSystem;
PointLightSourceSystem       *_pointLightSourceSystem;
SpotLightSourceSystem        *_spotLightSourceSystem;
public:
    ObjectCoordinator();
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
    void addIntArr(const string &shaderName, const string &uniformName, int *value, uint32 size);
    void addFloat(const string &shaderName, const string &uniformName, GLfloat value);
    void addFloat2(const string &shaderName, const string &uniformName, const Vector<GLfloat, 2> &value);
    void addFloat3(const string &shaderName, const string &uniformName, const Vector<GLfloat, 3> &value);
    void addFloat4(const string &shaderName, const string &uniformName, const Vector<GLfloat, 4> &value);
    void addMat4(const string &shaderName, const string &uniformName, const Matrix<GLfloat, 4, 4> &value);

    /*
     * Updates the stored uniform in the shader
     * Only call these methods if updating the uniform is necessary
     */
    void updateInt(const string &shaderName, const string& uniformName, GLint value);
    void updateIntArr(const string &shaderName, const string& uniformName, int *value, uint32 size);
    void updateFloat(const string &shaderName, const string& uniformName, GLfloat value);
    void updateFloat2(const string &shaderName, const string& uniformName, const Vector<GLfloat, 2> &value);
    void updateFloat3(const string &shaderName, const string& uniformName, const Vector<GLfloat, 3> &value);
    void updateFloat4(const string &shaderName, const string& uniformName, const Vector<GLfloat, 4> &value);
    void updateMat4(const string &shaderName, const string& uniformName, const Matrix<GLfloat, 4, 4> &value);

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
    void registerSystem(const Args& ... args)
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
     * Loads model from a meshFactory
     */
    void loadModel(
        IMeshFactory *meshFactory,
        const string &modelName,
        const string &materialName);

    /*
     * Returns an already loaded model as a model object
     * Opacity is opaque by default
     * Each transparent object adds extra computing overhead during drawing
     */
    Entity createModel2D(
        const string &modelName,
        const string &shaderName,
        const Matrix<float, 4, 4> &modelMatrix = identity_matrix<float, 4, 4>(),
        const Vector<float, 2>& position = Vector<float, 2>(0.0f, 0.0f),
        const Vector<float, 4>& color = Vector<float, 4>(1.0f, 1.0f, 1.0f, 1.0f));
    Entity createModel3D(
        const string &modelName,
        const string &shaderName,
        const Matrix<float, 4, 4> &modelMatrix = identity_matrix<float, 4, 4>(),
        const Vector<float, 3>& position = Vector<float, 3>(0.0f, 0.0f, 0.0f),
        const Vector<float, 4>& color = Vector<float, 4>(1.0f, 1.0f, 1.0f, 1.0f));
    
    /*
     * Disable/Enable entity for update and render
     */
    void hideEntity(Entity entity);
    void showEntity(Entity entity);

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
    void updateComponent(Entity object, const Component& component)
    {
        TRACE();
        _modelManager.updateComponent<Component>(object, component);
    }

    /* Currently this updates all the meshes owned by the model.. not good..
     * Caller's responsibility:
     *      - Only call these functions if the specific Buffer Object is dynamically set
     */
    void updateVBO_position2D(Entity object, const void *data, GLuint size);
    void updateVBO_position3D(Entity object, const void *data, GLuint size);
    void updateVBO_normal(Entity object, const void *data, GLuint size);
    void updateVBO_texture(Entity object, const void *data, GLuint size);
    void updateIBO(Entity object, const void *data, GLuint count);

    /*
     * Updates all registered systems in the order of registration
     */
    void updateSystems(float deltaTime);

    /*
     * 1. Draw opaque objects
     * 2. Sort all transparent objects based on their distance from camera
     * 3. Draw all transparent objects in sorted order
     */
    void drawObjects3D(
        const Vector<float, 3> &cameraPosition, // there should be a camera position component that updates for all opaque objects
        const Matrix<float, 4, 4> &view,
        const Matrix<float, 4, 4> &projection);

    /*
     * Render 2D objects
     */
    void drawObjects2D(const Matrix<float, 4, 4>& projection);

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
