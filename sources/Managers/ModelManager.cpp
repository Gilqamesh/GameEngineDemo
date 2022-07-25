#include "Managers/ModelManager.hpp"
#include "Debug/Trace.hpp"
#include "ECS/Components/PositionComponent3D.hpp"
#include "ECS/Components/RotationalComponent.hpp"
#include "Log.hpp"

namespace GilqEngine
{

ModelManager::ModelManager()
{
    TRACE();
    _coordinator = new Coordinator();
}

ModelManager::~ModelManager()
{
    TRACE();
    clearModelEntities();
    for (auto model : _loadedModels)
        delete model.second;
    delete _coordinator;
}

void ModelManager::loadModel(const string &path, const string &name)
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
    const string &name,
    const string &materialName)
{
    TRACE();
    ASSERT(_loadedModels.count(name) == 0);
    _loadedModels[name] = new Model(meshFactory, name);
    _loadedModels[name]->setMaterialManager(_materialManager);
    _loadedModels[name]->setTextureManager(_textureManager);
    _loadedModels[name]->setMaterial(materialName);
}

// Todo: remove entities that are associated with this model
// void destroyModel(const string name)
// {
//     TRACE();
//     ASSERT(_loadedModels.count(name));
//     delete _loadedModels[name];
//     _loadedModels.erase(name);
// }

Entity ModelManager::createModel(const string &name)
{
    TRACE();
    ASSERT(_loadedModels.count(name));
    Entity model = _coordinator->createEntity();
    _modelEntities.push_back(_loadedModels[name]);

    return (model);
}

Model *ModelManager::getModel(Entity model)
{
    TRACE();
    return (_modelEntities[model]);
}

void ModelManager::setModelShader(Entity model, Shader *shader)
{
    TRACE();
    _modelEntities[model]->setShader(shader);
}

// Check if anyone calls this
// void ModelManager::drawModels(
//     const Matrix<float, 4, 4> &view,
//     const Matrix<float, 4, 4> &projection)
// {
//     TRACE();
//     for (uint32 objectIndex = 0; objectIndex < _modelEntities.size(); ++objectIndex)
//     {
//         Model *model = _modelEntities[objectIndex];
//         Shader *shader = model->getShader();
//         shader->bind();
//         shader->setMat4("model", _modelMatrices[objectIndex].m);
//         shader->setMat4("view", view);
//         shader->setMat4("projection", projection);
//         model->draw();
//     }
// }

void ModelManager::destroyModelEntity(Entity entity)
{
    (void)entity;
    throw Exception("Not implemented");
    // TODO(david): implement
    // NOTE(david): for destroying entities it makes more sense to index into a vector than to store them sparsely

    TRACE();
    // _modelEntities.erase(entity);
    // _coordinator->destroyEntity(entity);
    // _modelMatrices.erase(entity);
}

void ModelManager::clearModelEntities()
{
    throw Exception("Not implemented");
    // TODO(david): implement

    TRACE();
    // for (auto &model : _modelEntities)
    //     _coordinator->destroyEntity(model.first);
    // _modelEntities.clear();
    // _modelMatrices.clear();
}

}
