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

void ObjectCoordinator::addTexture(const string &texturePath, const string &textureName)
{
    TRACE();
    _textureManager.addTexture(texturePath, textureName);
}

void ObjectCoordinator::addTexture(const char *texturePath, const string &textureName)
{
    addTexture(string(texturePath), textureName);
}

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
