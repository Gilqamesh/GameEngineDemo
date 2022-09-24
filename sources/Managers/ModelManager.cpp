#include "Managers/ModelManager.hpp"
#include "Debug/Trace.hpp"
#include "ECS/Components/RotationalComponent2D.hpp"
#include "ECS/Components/RotationalComponent3D.hpp"
#include "ECS/Components/SizeComponent2D.hpp"
#include "ECS/Components/SizeComponent3D.hpp"
#include "ECS/Components/PositionComponent2D.hpp"
#include "ECS/Components/PositionComponent3D.hpp"
#include "ECS/Components/ColorComponent.hpp"
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
        IMeshPrimitive *meshPrimitive,
        const string &name,
        const string &materialName)
    {
        TRACE();
        if (_loadedModels.count(name)) // model already loaded -> do nothing
            return;
        _loadedModels[name] = new Model(meshPrimitive, name);
        _loadedModels[name]->setMaterialManager(_materialManager);
        _loadedModels[name]->setTextureManager(_textureManager);
        _loadedModels[name]->setMaterial(materialName);
    }

    /*
     * Not tested
     */
    void ModelManager::unloadModel(const string &name)
    {
        TRACE();
        if (_loadedModels.count(name) == 0)
            return;
        Model *model = _loadedModels[name];
        auto it = _modelEntities.begin();
        while (it != _modelEntities.end())
        {
            if (it->second == model)
            {
                it = _modelEntities.erase(it);
                _coordinator->destroyEntity(it->first);
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

    Shader *ModelManager::getShader(Entity entity)
    {
        TRACE();
        ASSERT(_modelShaders.count(entity));
        return (_modelShaders[entity]);
    }

    void ModelManager::drawModel(Entity entity)
    {
        TRACE();
        ASSERT(_modelShaders.count(entity));
        _modelEntities[entity]->draw(_modelShaders[entity]);
    }

    Model *ModelManager::getModel(const string &modelName)
    {
        TRACE();
        if (_loadedModels.count(modelName) == 0)
            throw Exception("Model is not loaded: " + modelName);

        return (_loadedModels[modelName]);
    }

    Matrix<float, 4, 4> ModelManager::getModelMatrix(Entity entity)
    {
        TRACE();
        ComponentSignature &componentSignature = _coordinator->getComponentSignature(entity);
        Matrix<float, 4, 4> result = identity_matrix<float, 4, 4>();

        if (componentSignature[_coordinator->getComponentId<RotationalComponent2D>()] == true)
        {
            // NOT TESTED
            RotationalComponent2D &rotationalComponent2D = _coordinator->getComponent<RotationalComponent2D>(entity);
            result *= rotation_matrix(rotationalComponent2D.angle, rotationalComponent2D.p);
        }
        else if (componentSignature[_coordinator->getComponentId<RotationalComponent3D>()] == true)
        {
            RotationalComponent3D &rotationalComponent3D = _coordinator->getComponent<RotationalComponent3D>(entity);
            result *= rotation_matrix(rotationalComponent3D.angle, rotationalComponent3D.axis);
        }
        if (componentSignature[_coordinator->getComponentId<SizeComponent2D>()] == true)
        {
            result *= scale_matrix(_coordinator->getComponent<SizeComponent2D>(entity).size);
        }
        else if (componentSignature[_coordinator->getComponentId<SizeComponent3D>()] == true)
        {
            result *= scale_matrix(_coordinator->getComponent<SizeComponent3D>(entity).size);
        }
        if (componentSignature[_coordinator->getComponentId<PositionComponent2D>()] == true)
        {
            result *= translation_matrix(_coordinator->getComponent<PositionComponent2D>(entity).p);
        }
        else if (componentSignature[_coordinator->getComponentId<PositionComponent3D>()] == true)
        {
            result *= translation_matrix(_coordinator->getComponent<PositionComponent3D>(entity).p);
        }

        return (result);
    }

    void ModelManager::setUniforms(Entity entity)
    {
        TRACE();
        ComponentSignature &componentSignature = _coordinator->getComponentSignature(entity);
        ASSERT(_modelShaders.count(entity));
        Shader *shader = _modelShaders[entity];

        if (componentSignature[_coordinator->getComponentId<ColorComponent>()] == true)
        {
            shader->setFloat4("u_color", _coordinator->getComponent<ColorComponent>(entity).c);
        }
    }

    void ModelManager::setModelShader(Entity model, Shader *shader)
    {
        TRACE();
        _modelShaders[model] = shader;
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

    void ModelManager::updateBufferFloat2(Entity model, u32 layoutIndex, const void *data, u32 numberOfUpdates)
    {
        TRACE();
        _modelEntities[model]->updateBufferFloat2(layoutIndex, data, numberOfUpdates);
    }

    void ModelManager::updateBufferFloat3(Entity model, u32 layoutIndex, const void *data, u32 numberOfUpdates)
    {
        TRACE();
        _modelEntities[model]->updateBufferFloat3(layoutIndex, data, numberOfUpdates);
    }

    void ModelManager::updateBufferFloat4(Entity model, u32 layoutIndex, const void *data, u32 numberOfUpdates)
    {
        TRACE();
        _modelEntities[model]->updateBufferFloat4(layoutIndex, data, numberOfUpdates);
    }

    void ModelManager::updateBufferMat4(Entity model, u32 layoutIndex, const void *data, u32 numberOfUpdates)
    {
        TRACE();
        _modelEntities[model]->updateBufferMat4(layoutIndex, data, numberOfUpdates);
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
