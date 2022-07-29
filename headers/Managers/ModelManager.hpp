#ifndef MODELMANAGER_HPP
# define MODELMANAGER_HPP

# include "Core/Model.hpp"
# include "ECS/Coordinator.hpp"
# include "Interfaces/ICamera.hpp"
# include "Managers/MaterialManager.hpp"
# include "Managers/TextureManager.hpp"
# include "Interfaces/IMeshFactory.hpp"

namespace GilqEngine
{

class ModelManager
{
Coordinator                                               *_coordinator;
unordered_map<Entity, Model *, hash<int> >                _modelEntities;
unordered_map<string, Model *>                            _loadedModels;
MaterialManager                                           *_materialManager;
TextureManager                                            *_textureManager;
public:
    ModelManager();
    ~ModelManager();

    ModelManager(const ModelManager &other) = delete;
    ModelManager &operator=(const ModelManager &other) = delete;

    inline void setMaterialManager(MaterialManager *materialManager) { _materialManager = materialManager; }
    inline void setTextureManager(TextureManager *textureManager) { _textureManager = textureManager; }

    void loadModel(const string &path, const string &name);
    void loadModel(IMeshFactory *meshFactory, const string &name, const string &materialName);
    /* NOTE(david): Not tested!!
     * Unloads model from the memory and destroys all entities associated with it.
     */
    void unloadModel(const string& name);

    /*
     * Creates an already loaded model
     * 'modelMatrix' is initial model matrix for the Model
     */
    Entity createModel(const string &name);

    Model *getModel(Entity entity);

    void setModelShader(Entity entity, Shader *shader);

    // // TODO(david): Currently not being used from the ObjectCoordinator
    // // Find a way to use this maybe if it makes more sense.
    // void drawModels(
    //     const Matrix<float, 4, 4> &view,
    //     const Matrix<float, 4, 4> &projection);

    /*
     * Disable/Enable the update and rendering of the entity
     */
    void hideEntity(Entity entity);
    void showEntity(Entity entity);

    /*
     * Destroy all model entities
     * Does not unload the models
     * Keep the Components and Systems registered
     */
    void clearEntities();

    /*
     * Destroys all entities
     * Unloads all models
     */
    void clear();

    template <typename Component>
    void registerComponent()
    {
        TRACE();
        _coordinator->registerComponent<Component>();
    }

    template <typename Component>
    void attachComponent(Entity model, Component component)
    {
        TRACE();
        _coordinator->attachComponent<Component>(model, component);
    }

    template <typename Component>
    bool hasComponent(Entity model)
    {
        TRACE();
        return (_coordinator->hasComponent<Component>(model));
    }

    template <typename Component>
    void removeComponent(Entity model)
    {
        TRACE();
        _coordinator->removeComponent<Component>(model);
    }

    template <typename Component>
    Component& getComponent(Entity model)
    {
        TRACE();
        return (_coordinator->getComponent<Component>(model));
    }

    template <typename Component>
    void updateComponent(Entity model, const Component& component)
    {
        TRACE();
        _coordinator->updateComponent<Component>(model, component);
    }

    template <typename Component>
    ComponentId getComponentId() const
    {
        TRACE();
        return (_coordinator->getComponentId<Component>());
    }

    template <typename System, typename... Args>
    System* registerSystem(const Args& ... args)
    {
        TRACE();
        System* system = _coordinator->registerSystem<System>(args ...);
        return (system);
    }

    void updateSystems(float dt);

    template <typename System>
    void setSystemSignature(ComponentSignature componentSignature)
    {
        TRACE();
        return (_coordinator->setSystemSignature<System>(componentSignature));
    }

    void print() const
    {
        TRACE();
        _coordinator->print();
    }

    /* Currently this updates all the meshes owned by the model.. not good..
     * Caller's responsibility:
     *      - Only call these functions if the specific Buffer Object is dynamically set
     */
    void updateVBO_position2D(Entity model, const void *data, GLuint size);
    void updateVBO_position3D(Entity model, const void *data, GLuint size);
    void updateVBO_normal(Entity model, const void *data, GLuint size);
    void updateVBO_texture(Entity model, const void *data, GLuint size);
    void updateIBO(Entity model, const void *data, GLuint count);
};

}

#endif
