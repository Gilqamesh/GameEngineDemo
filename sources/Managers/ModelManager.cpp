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
    clearEntities();
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

/*
 * Not tested
 */
void ModelManager::unloadModel(const string& name)
{
    TRACE();
    if (_loadedModels.count(name) == 0)
        return ;
    Model *model = _loadedModels[name];
    auto it = _modelEntities.begin();
    while (it != _modelEntities.end())
    {
        if (it->second == model)
        {
            it = _modelEntities.erase(it);
        }
        else
        {
            ++it;
        }
    }
    delete model;
    _loadedModels.erase(name);
}

Entity ModelManager::createModel(const string &name)
{
    TRACE();
    ASSERT(_loadedModels.count(name));
    Entity model = _coordinator->createEntity();
    _modelEntities[model] = _loadedModels[name];

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

void ModelManager::hideEntity(Entity entity)
{
    TRACE();
    _coordinator->hideEntity(entity);
}

void ModelManager::showEntity(Entity entity)
{
    TRACE();
    _coordinator->showEntity(entity);
}

void ModelManager::clearEntities()
{
    TRACE();
    for (auto &model : _modelEntities)
    {
        _coordinator->destroyEntity(model.first);
    }
    _modelEntities.clear();
}

void ModelManager::clear()
{
    _modelEntities.clear();
    _loadedModels.clear();
}

void ModelManager::updateVBO_position2D(Entity model, const void *data, GLuint size)
{
    TRACE();
    _modelEntities[model]->updateVBO_position2D(data, size);
}

void ModelManager::updateVBO_position3D(Entity model, const void *data, GLuint size)
{
    TRACE();
    _modelEntities[model]->updateVBO_position3D(data, size);
}

void ModelManager::updateVBO_normal(Entity model, const void *data, GLuint size)
{
    TRACE();
    _modelEntities[model]->updateVBO_normal(data, size);
}

void ModelManager::updateVBO_texture(Entity model, const void *data, GLuint size)
{
    TRACE();
    _modelEntities[model]->updateVBO_texture(data, size);
}

void ModelManager::updateIBO(Entity model, const void *data, GLuint count)
{
    TRACE();
    _modelEntities[model]->updateIBO(data, count);
}

void ModelManager::updateSystems(float dt)
{
    TRACE();
    _coordinator->updateSystems(dt);
}

}
