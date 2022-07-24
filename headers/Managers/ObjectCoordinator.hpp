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

namespace GilqEngine
{

// goal: make this class as user friendly as possible
class ObjectCoordinator
{
MaterialManager         _materialManager;
ShaderManager           _shaderManager;
TextureManager          _textureManager;
ModelManager            _modelManager;

list<ISystem *>         _registeredSystems;

// Try this until we need to destroy entities, although even then we might want to store entities
// contiguously and have a second array that indexes into it
vector<Entity>              _opaqueObjects;
vector<pair<Entity, float>> _transparentObjects;

// unordered_map<Entity, float, hash<int>> _opaqueObjects;
// unordered_map<Entity, float, hash<int>> _transparentObjects;

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

    /*
     * Adds a colored texture to the texture library
     */
    void addTexture(
        const Vector<float, 4>& color,
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
        _registeredSystems.push_back(_modelManager.registerSystem<System>(args...));
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
    Entity createModel(
        const string &modelName,
        const string &shaderName,
        const Matrix<float, 4, 4> &modelMatrix = identity_matrix<float, 4, 4>(),
        float opacity = 1.0f);

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

    /*
     * Updates all registered systems in the order of registration
     */
    void onUpdate(float deltaTime);

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
     * Displays all entity's components
     */
    void print(void);
};

}

#endif
