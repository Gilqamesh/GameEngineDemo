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

std::list<ISystem *>   _registeredSystems;

std::unordered_map<Entity, float, std::hash<int>> _opaqueObjects;
std::unordered_map<Entity, float, std::hash<int>> _transparentObjects;

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
    void addMaterial(const std::string &materialName);

    /*
     * Setters to change texture of material
     */
    void setAmbient(const std::string &materialName, const std::string &textureName);
    void setDiffuse(const std::string &materialName, const std::string &textureName);
    void setSpecular(const std::string &materialName, const std::string &textureName);
    void setEmission(const std::string &materialName, const std::string &textureName);

    // ************************************************************************** //
    //                               Shader Methods                               //
    // ************************************************************************** //

    /*
     * Loads and adds a shader to the shader library
     */
    void addShader(
        const std::string &vsPath,
        const std::string &fsPath,
        const std::string &shaderName);

    // ************************************************************************** //
    //                              Texture Methods                               //
    // ************************************************************************** //

    /*
     * Loads and adds a texture to the texture library
     */
    void addTexture(
        const std::string &texturePath,
        const std::string &textureName);

    /*
     * Retrieves the texture from the texture library
     */
    Texture *getTexture(const std::string &textureName); // shouldn't need this

    // ************************************************************************** //
    //                               Model Methods                                //
    // ************************************************************************** //

    /*
     * Order of registraton matters
     * Once registered, the system will be updated when calling 'onUpdate'
     */
    template <class System>
    void registerSystem()
    {
        TRACE();
        _registeredSystems.push_back(_modelManager.registerSystem<System>());
    }

    /*
     * Loads in Model object under 'modelName' for later retrieval
     */
    void loadModel(
        const std::string &modelPath,
        const std::string &modelName);

    /*
     * Loads model from a meshFactory
     */
    void loadModel(
        IMeshFactory *meshFactory,
        const std::string &modelName,
        const std::string &materialName);

    /*
     * Returns an already loaded model as a model object
     * Opacity is opaque by default
     * Each transparent object adds extra computing overhead during drawing
     */
    Entity createModel(
        const std::string &modelName,
        const std::string &shaderName,
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
    void drawObjects(
        const Vector<float, 3> &cameraPosition, // there should be a camera position component that updates for all opaque objects
        const Matrix<float, 4, 4> &view,
        const Matrix<float, 4, 4> &projection);

    /*
     * 2D-version of drawing objects on the screen
     */
    void drawObjects(void);

    /*
     * Displays all entity's components
     */
    void print(void);
};

}

#endif
