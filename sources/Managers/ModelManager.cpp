#include "Managers/ModelManager.hpp"
#include "Debug/Trace.hpp"
#include "ECS/Components/PositionComponent.hpp"
#include "ECS/Components/RotationalComponent.hpp"

namespace GilqEngine
{

ModelManager::ModelManager()
{
    TRACE();
    _coordinator = new Coordinator();
    _coordinator->registerComponent<ModelMatrixComponent>();
}

ModelManager::~ModelManager()
{
    TRACE();
    clearModelEntities();
    for (auto model : _loadedModels)
        delete model.second;
    delete _coordinator;
}

void ModelManager::loadModel(const std::string &path, const std::string &name)
{
    TRACE();
    ASSERT(_loadedModels.count(name) == 0);
    _loadedModels[name] = new Model(path, name);
    _loadedModels[name]->setMaterialManager(_materialManager);
    _loadedModels[name]->setTextureManager(_textureManager);
    _loadedModels[name]->load();
}

void ModelManager::loadModel(
    IMeshFactory *meshFactory,
    const std::string &name,
    const std::string &materialName)
{
    TRACE();
    ASSERT(_loadedModels.count(name) == 0);
    _loadedModels[name] = new Model(meshFactory, name);
    _loadedModels[name]->setMaterialManager(_materialManager);
    _loadedModels[name]->setTextureManager(_textureManager);
    _loadedModels[name]->setMaterial(materialName);
}

// Todo: remove entities that are associated with this model
// void destroyModel(const std::string name)
// {
//     TRACE();
//     ASSERT(_loadedModels.count(name));
//     delete _loadedModels[name];
//     _loadedModels.erase(name);
// }

Entity ModelManager::createModel(const std::string &name, const Matrix<GLfloat, 4, 4> &modelMatrix)
{
    TRACE();
    ASSERT(_loadedModels.count(name));
    Entity model = _coordinator->createEntity();
    _initialModelMatrices[model] = ModelMatrixComponent({modelMatrix});
    _coordinator->attachComponent<ModelMatrixComponent>(model, {modelMatrix});
    _modelEntities[model] = _loadedModels[name];
    return (model);
}

Model *ModelManager::getModel(Entity model)
{
    TRACE();
    ASSERT(_modelEntities.count(model));
    return (_modelEntities.at(model));
}

void ModelManager::setModelShader(Entity model, Shader *shader)
{
    TRACE();
    _modelEntities[model]->setShader(shader);
}

void ModelManager::drawModels(
    const Matrix<float, 4, 4> &view,
    const Matrix<float, 4, 4> &projection)
{
    TRACE();
    for (auto &model : _modelEntities)
    {
        auto *shader = model.second->getShader();
        shader->bind();
        shader->setMat4("model", _coordinator->getComponent<ModelMatrixComponent>(model.first).m);
        shader->setMat4("view", view);
        shader->setMat4("projection", projection);
        model.second->draw();
    }
}

void ModelManager::resetModelMatrices()
{
    TRACE();
    for (auto &model : _modelEntities)
    {
        _coordinator->getComponent<ModelMatrixComponent>(model.first) = _initialModelMatrices[model.first];
    }
}

void ModelManager::destroyModelEntity(Entity entity)
{
    TRACE();
    _modelEntities.erase(entity);
    _coordinator->destroyEntity(entity);
    _initialModelMatrices.erase(entity);
}

void ModelManager::clearModelEntities()
{
    TRACE();
    for (auto &model : _modelEntities)
        _coordinator->destroyEntity(model.first);
    _modelEntities.clear();
    _initialModelMatrices.clear();
}

}
