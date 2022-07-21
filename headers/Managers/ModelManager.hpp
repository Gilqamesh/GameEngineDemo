#ifndef MODELMANAGER_HPP
# define MODELMANAGER_HPP

# include "Core/Model.hpp"
# include "ECS/Coordinator.hpp"
# include "Interfaces/ICamera.hpp"
# include "Managers/MaterialManager.hpp"
# include "Managers/TextureManager.hpp"
# include "ECS/Components/ModelMatrixComponent.hpp"
# include "Interfaces/IMeshFactory.hpp"

namespace GilqEngine
{

class ModelManager
{
Coordinator                                                         *_coordinator;
std::unordered_map<Entity, Model *, std::hash<int> >                _modelEntities;
std::unordered_map<Entity, ModelMatrixComponent, std::hash<int> >   _initialModelMatrices;
std::unordered_map<std::string, Model *>                            _loadedModels;
std::unordered_map<const char *, ISystem *>                         _systems;
MaterialManager                                                     *_materialManager;
TextureManager                                                      *_textureManager;
public:
    ModelManager();
    ~ModelManager();

    ModelManager(const ModelManager &other) = delete;
    ModelManager &operator=(const ModelManager &other) = delete;

    inline void setMaterialManager(MaterialManager *materialManager) { _materialManager = materialManager; }
    inline void setTextureManager(TextureManager *textureManager) { _textureManager = textureManager; }

    void loadModel(const std::string &path, const std::string &name);
    void loadModel(IMeshFactory *meshFactory, const std::string &name, const std::string &materialName);
    // void destroyModel(const std::string name);

    /*
     * Creates an already loaded model
     * 'modelMatrix' is initial model matrix for the Model
     */
    Entity createModel(const std::string &name, const Matrix<GLfloat, 4, 4> &modelMatrix);

    Model *getModel(Entity model);

    void setModelShader(Entity model, Shader *shader);

    void drawModels(
        const Matrix<float, 4, 4> &view,
        const Matrix<float, 4, 4> &projection);

    void resetModelMatrices();

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

    const Vector<float, 3> &getAveragePoint(const std::string &modelName);

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

    template <typename T>
    T* registerSystem()
    {
        TRACE();
        const char *systemName = typeid(T).name();
        ASSERT(_systems.count(systemName) == 0);
        T* system = _coordinator->registerSystem<T>();
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
};

}

#endif
