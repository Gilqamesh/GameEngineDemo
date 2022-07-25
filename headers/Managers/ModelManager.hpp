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
vector<Model *>                                           _modelEntities;
// it makes sense to use the EntityId as the index for the vector for now
// unordered_map<Entity, Model *, hash<int> >                _modelEntities;
// unordered_map<Entity, ModelMatrixComponent, hash<int> >   _initialModelMatrices;
unordered_map<string, Model *>                            _loadedModels;
unordered_map<const char *, ISystem *>                    _systems;
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
    // void destroyModel(const string name);

    /*
     * Creates an already loaded model
     * 'modelMatrix' is initial model matrix for the Model
     */
    Entity createModel(const string &name);

    Model *getModel(Entity model);

    void setModelShader(Entity model, Shader *shader);

    // TODO(david): Currently not being used from the ObjectCoordinator
    // Find a way to use this maybe if it makes more sense.
    void drawModels(
        const Matrix<float, 4, 4> &view,
        const Matrix<float, 4, 4> &projection);

    /*
     * Destroys the entity related to the model
     * Does not unload the model
     */
    void destroyModelEntity(Entity model);

    /*
     * Destroy all model entities
     * Does not unload the models
     * Keep the Components and Systems registered
     */
    void clearModelEntities();

    template <typename T>
    void registerComponent()
    {
        TRACE();
        _coordinator->registerComponent<T>();
    }

    template <typename T>
    void attachComponent(Entity model, T component)
    {
        TRACE();
        _coordinator->attachComponent<T>(model, component);
    }

    template <typename T>
    bool hasComponent(Entity model)
    {
        TRACE();
        return (_coordinator->hasComponent<T>(model));
    }

    template <typename T>
    void removeComponent(Entity model)
    {
        TRACE();
        _coordinator->removeComponent<T>(model);
    }

    template <typename T>
    T& getComponent(Entity model)
    {
        TRACE();
        return (_coordinator->getComponent<T>(model));
    }

    template <typename T>
    ComponentId getComponentId() const
    {
        TRACE();
        return (_coordinator->getComponentId<T>());
    }

    template <typename T, typename... Args>
    T* registerSystem(const Args& ... args)
    {
        TRACE();
        const char *systemName = typeid(T).name();
        ASSERT(_systems.count(systemName) == 0);
        T* system = _coordinator->registerSystem<T>(args ...);
        _systems[systemName] = system;
        return (system);
    }

    template <typename T>
    void updateSystem(float dt)
    {
        TRACE();
        const char *systemName = typeid(T).name();
        ASSERT(_systems.count(systemName));
        _systems[systemName]->onUpdate(dt);
    }

    template <typename T>
    void setSystemSignature(ComponentSignature componentSignature)
    {
        TRACE();
        return (_coordinator->setSystemSignature<T>(componentSignature));
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
