#include "Managers/ObjectCoordinator.hpp"
#include "Log.hpp"

namespace GilqEngine
{

ObjectCoordinator::ObjectCoordinator()
{
    TRACE();
    _modelManager.setMaterialManager(&_materialManager);
    _modelManager.setTextureManager(&_textureManager);
    // TODO(david): maybe abstract these system registrations out
    _directionalLightSourceSystem = _modelManager.registerSystem<DirectionalLightSourceSystem>();
    _pointLightSourceSystem = _modelManager.registerSystem<PointLightSourceSystem>();
    _spotLightSourceSystem = _modelManager.registerSystem<SpotLightSourceSystem>();
}

ObjectCoordinator::~ObjectCoordinator()
{
    TRACE();
}

// ************************************************************************** //
//                              Material Methods                              //
// ************************************************************************** //

void ObjectCoordinator::addMaterial(const string &materialName)
{
    TRACE();
    _materialManager.addMaterial(materialName);
}

void ObjectCoordinator::setAmbient(const string &materialName, const string &textureName)
{
    TRACE();
    Material &material = _materialManager.getMaterial(materialName);
    material.setAmbient(_textureManager.getTexture(textureName));
}

void ObjectCoordinator::setDiffuse(const string &materialName, const string &textureName)
{
    TRACE();
    Material &material = _materialManager.getMaterial(materialName);
    material.setDiffuse(_textureManager.getTexture(textureName));
}

void ObjectCoordinator::setSpecular(const string &materialName, const string &textureName)
{
    TRACE();
    Material &material = _materialManager.getMaterial(materialName);
    material.setSpecular(_textureManager.getTexture(textureName));
}

void ObjectCoordinator::setEmission(const string &materialName, const string &textureName)
{
    TRACE();
    Material &material = _materialManager.getMaterial(materialName);
    material.setEmission(_textureManager.getTexture(textureName));
}

// ************************************************************************** //
//                               Shader Methods                               //
// ************************************************************************** //

void ObjectCoordinator::addShader(const string &vsPath, const string &fsPath, const string &shaderName)
{
    TRACE();
    _shaderManager.addShader(vsPath, fsPath, shaderName);
}

void ObjectCoordinator::addInt(const string &shaderName, const string &uniformName, GLint value)
{
    TRACE();
    _shaderManager.getShader(shaderName)->addInt(uniformName, value);
}

void ObjectCoordinator::addIntArr(const string &shaderName, const string &uniformName, int *value, uint32 size)
{
    TRACE();
    _shaderManager.getShader(shaderName)->addIntArr(uniformName, value, size);
}

void ObjectCoordinator::addFloat(const string &shaderName, const string &uniformName, GLfloat value)
{
    TRACE();
    _shaderManager.getShader(shaderName)->addFloat(uniformName, value);
}

void ObjectCoordinator::addFloat2(const string &shaderName, const string &uniformName, const Vector<GLfloat, 2> &value)
{
    TRACE();
    _shaderManager.getShader(shaderName)->addFloat2(uniformName, value);
}

void ObjectCoordinator::addFloat3(const string &shaderName, const string &uniformName, const Vector<GLfloat, 3> &value)
{
    TRACE();
    _shaderManager.getShader(shaderName)->addFloat3(uniformName, value);
}

void ObjectCoordinator::addFloat4(const string &shaderName, const string &uniformName, const Vector<GLfloat, 4> &value)
{
    TRACE();
    _shaderManager.getShader(shaderName)->addFloat4(uniformName, value);
}

void ObjectCoordinator::addMat4(const string &shaderName, const string &uniformName, const Matrix<GLfloat, 4, 4> &value)
{
    TRACE();
    _shaderManager.getShader(shaderName)->addMat4(uniformName, value);
}

void ObjectCoordinator::updateInt(const string &shaderName, const string& uniformName, GLint value)
{
    TRACE();
    _shaderManager.getShader(shaderName)->updateInt(uniformName, value);
}

void ObjectCoordinator::updateIntArr(const string &shaderName, const string& uniformName, int *value, uint32 size)
{
    TRACE();
    _shaderManager.getShader(shaderName)->updateIntArr(uniformName, value, size);
}

void ObjectCoordinator::updateFloat(const string &shaderName, const string& uniformName, GLfloat value)
{
    TRACE();
    _shaderManager.getShader(shaderName)->updateFloat(uniformName, value);
}

void ObjectCoordinator::updateFloat2(const string &shaderName, const string& uniformName, const Vector<GLfloat, 2> &value)
{
    TRACE();
    _shaderManager.getShader(shaderName)->updateFloat2(uniformName, value);
}

void ObjectCoordinator::updateFloat3(const string &shaderName, const string& uniformName, const Vector<GLfloat, 3> &value)
{
    TRACE();
    _shaderManager.getShader(shaderName)->updateFloat3(uniformName, value);
}

void ObjectCoordinator::updateFloat4(const string &shaderName, const string& uniformName, const Vector<GLfloat, 4> &value)
{
    TRACE();
    _shaderManager.getShader(shaderName)->updateFloat4(uniformName, value);
}

void ObjectCoordinator::updateMat4(const string &shaderName, const string& uniformName, const Matrix<GLfloat, 4, 4> &value)
{
    TRACE();
    _shaderManager.getShader(shaderName)->updateMat4(uniformName, value);
}

Shader *ObjectCoordinator::getShader(const string& shaderName)
{
    TRACE();
    return (_shaderManager.getShader(shaderName));
}

// ************************************************************************** //
//                              Texture Methods                               //
// ************************************************************************** //

void ObjectCoordinator::addTexture(const string &texturePath, const string &textureName)
{
    TRACE();
    _textureManager.addTexture(texturePath, textureName);
}

void ObjectCoordinator::addTexture(const char *texturePath, const string &textureName)
{
    addTexture(string(texturePath), textureName);
}

// ************************************************************************** //
//                               Model Methods                                //
// ************************************************************************** //

void ObjectCoordinator::loadModel(const string &modelPath, const string &modelName)
{
    TRACE();
    _modelManager.loadModel(modelPath, modelName);
}

void ObjectCoordinator::loadModel(
    IMeshPrimitive *meshPrimitive,
    const string &modelName,
    const string &materialName)
{
    TRACE();
    _modelManager.loadModel(meshPrimitive, modelName, materialName);
}

Model *ObjectCoordinator::getModel(const string& modelName)
{
    TRACE();
    return (_modelManager.getModel(modelName));
}

Entity ObjectCoordinator::createModel2D(const string &modelName, const string &shaderName)
{
    TRACE();
    Entity entity = _modelManager.createModel(modelName);

    _modelManager.setModelShader(entity, _shaderManager.getShader(shaderName));
    _aliveEntities.insert(entity);
    return (entity);
}

Entity ObjectCoordinator::createModel3D(const string &modelName, const string &shaderName)
{
    TRACE();
    Entity entity = _modelManager.createModel(modelName);

    _modelManager.setModelShader(entity, _shaderManager.getShader(shaderName));
    _aliveEntities.insert(entity);
    return (entity);
}

void ObjectCoordinator::hideEntity(Entity entity)
{
    TRACE();
    _modelManager.hideEntity(entity);
    _aliveEntities.erase(entity);
    _deadEntities.insert(entity);
}

void ObjectCoordinator::showEntity(Entity entity)
{
    TRACE();
    _modelManager.showEntity(entity);
    _deadEntities.erase(entity);
    _aliveEntities.insert(entity);
}

// ************************************************************************** //
//                          ParticleGenerator Methods                         //
// ************************************************************************** //

GeneratorId ObjectCoordinator::registerParticleGenerator(
    const string& modelName,
    const string& shaderName,
    uint32 maxNewParticlesPerFrame,
    float maxLifeTime,
    const string& particleTransform)
{
    TRACE();
    GeneratorId generatorId = _particleGeneratorManager.addParticleGenerator(maxNewParticlesPerFrame, maxLifeTime);
    _particleGeneratorManager.setShader(generatorId, _shaderManager.getShader(shaderName));
    _particleGeneratorManager.setModel(generatorId, _modelManager.getModel(modelName));
    _particleGeneratorManager.setParticleTransform(generatorId, particleTransform);
    _particleGeneratorManager.setParticlesPerFrame(generatorId, 2);
    _particleGeneratorManager.setParticleToSpawn(generatorId, Particle());

    _runningGenerators.insert(generatorId);

    return (generatorId);
}

void ObjectCoordinator::setGeneratorParticleTransform(GeneratorId generatorId, const string& transformName)
{
    TRACE();
    _particleGeneratorManager.setParticleTransform(generatorId, transformName);
}

void ObjectCoordinator::setGeneratorShader(GeneratorId generatorId, const string& shaderName)
{
    TRACE();
    _particleGeneratorManager.setShader(generatorId, _shaderManager.getShader(shaderName));
}

void ObjectCoordinator::setGeneratorModel(GeneratorId generatorId, const string& modelName)
{
    TRACE();
    _particleGeneratorManager.setModel(generatorId, _modelManager.getModel(modelName));
}

void ObjectCoordinator::updateGenerator(
    GeneratorId generatorId,
    uint32 nOfParticlesToSpawn,
    const Particle& particleToSpawn,
    float deltaTime)
{
    TRACE();
    _particleGeneratorManager.setParticlesPerFrame(generatorId, nOfParticlesToSpawn);
    _particleGeneratorManager.setParticleToSpawn(generatorId, particleToSpawn);
    _particleGeneratorManager.update(generatorId, deltaTime);
}

void ObjectCoordinator::stopGenerator(GeneratorId generatorId)
{
    TRACE();
    _runningGenerators.erase(generatorId);
    _idleGenerators.insert(generatorId);
}

void ObjectCoordinator::startGenerator(GeneratorId generatorId)
{
    TRACE();
    _idleGenerators.erase(generatorId);
    _runningGenerators.insert(generatorId);
}

// ************************************************************************** //
//                                 Own Methods                                //
// ************************************************************************** //

void ObjectCoordinator::updateVBO_position2D(Entity object, const void *data, GLuint size)
{
    TRACE();
    _modelManager.updateVBO_position2D(object, data, size);
}

void ObjectCoordinator::updateVBO_position3D(Entity object, const void *data, GLuint size)
{
    TRACE();
    _modelManager.updateVBO_position3D(object, data, size);
}

void ObjectCoordinator::updateVBO_normal(Entity object, const void *data, GLuint size)
{
    TRACE();
    _modelManager.updateVBO_normal(object, data, size);
}

void ObjectCoordinator::updateVBO_texture(Entity object, const void *data, GLuint size)
{
    TRACE();
    _modelManager.updateVBO_texture(object, data, size);
}

void ObjectCoordinator::updateIBO(Entity object, const void *data, GLuint count)
{
    TRACE();
    _modelManager.updateIBO(object, data, count);
}

void ObjectCoordinator::updateSystems(float deltaTime)
{
    TRACE();
    _modelManager.updateSystems(deltaTime);
}

void ObjectCoordinator::drawObjects2D(const Matrix<float, 4, 4>& projection)
{
    TRACE();
    for (GeneratorId generatorId : _runningGenerators)
    {
        // Shader *shader = _modelManager.getShader(entity);
        // shader->bind();
        // shader->setUniforms();
        // _modelManager.setUniforms(entity);
        _particleGeneratorManager.draw(generatorId, projection);
    }
    for (auto &entity : _aliveEntities)
    {
        Shader *shader = _modelManager.getShader(entity);
        shader->bind();
        shader->setUniforms();
        _modelManager.setUniforms(entity);
        shader->setMat4("model", _modelManager.getModelMatrix(entity));
        shader->setMat4("projection", projection);
        _modelManager.drawModel(entity);
        shader->unbind();
    }
}

void ObjectCoordinator::drawObjects3D(
    const Vector<float, 3> &cameraPosition,
    const Matrix<float, 4, 4> &view,
    const Matrix<float, 4, 4> &projection)
{
    TRACE();
    /* TODO(david): support for particle generation */
    for (auto &entity : _aliveEntities)
    {
        Shader *shader = _modelManager.getShader(entity);
        shader->bind();
        shader->setUniforms();
        _modelManager.setUniforms(entity);
        Matrix<float, 4, 4> modelMatrix = _modelManager.getModelMatrix(entity);
        shader->setMat4("model", modelMatrix);
        shader->setMat4("view", view);
        shader->setMat4("projection", projection);
        shader->setMat4("normalMatrix", normal_matrix(modelMatrix));
        shader->setFloat3("viewPos", cameraPosition);
        _directionalLightSourceSystem->onRender(shader);
        _pointLightSourceSystem->onRender(shader);
        _spotLightSourceSystem->onRender(shader);
        _modelManager.drawModel(entity);
    }
}

void ObjectCoordinator::clear(void)
{
    _materialManager.clear();
    _shaderManager.clear();
    _textureManager.clear();
    _modelManager.clear();
    _aliveEntities.clear();
    _deadEntities.clear();

}

void ObjectCoordinator::print()
{
    TRACE();
    _modelManager.print();
}

}
