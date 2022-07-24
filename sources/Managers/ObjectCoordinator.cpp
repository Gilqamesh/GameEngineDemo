#include "Managers/ObjectCoordinator.hpp"
#include "Debug/Trace.hpp"

namespace GilqEngine
{

ObjectCoordinator::ObjectCoordinator()
{
    TRACE();
    _modelManager.setMaterialManager(&_materialManager);
    _modelManager.setTextureManager(&_textureManager);
    _directionalLightSourceSystem
        = _modelManager.registerSystem<DirectionalLightSourceSystem>();
    _pointLightSourceSystem
        = _modelManager.registerSystem<PointLightSourceSystem>();
    _spotLightSourceSystem
        = _modelManager.registerSystem<SpotLightSourceSystem>();
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

void ObjectCoordinator::addTexture(const string &texturePath, const string &textureName)
{
    TRACE();
    _textureManager.addTexture(texturePath, textureName);
}

void ObjectCoordinator::addTexture(const char *texturePath, const string &textureName)
{
    addTexture(string(texturePath), textureName);
}

void ObjectCoordinator::addTexture(const Vector<float, 4>& color, const string &textureName)
{
    TRACE();
    _textureManager.addTexture(color, textureName);
}

void ObjectCoordinator::loadModel(const string &modelPath, const string &modelName)
{
    TRACE();
    _modelManager.loadModel(modelPath, modelName);
}

void ObjectCoordinator::loadModel(
    IMeshFactory *meshFactory,
    const string &modelName,
    const string &materialName)
{
    TRACE();
    _modelManager.loadModel(meshFactory, modelName, materialName);
}

Entity ObjectCoordinator::createModel(
    const string &modelName,
    const string &shaderName,
    const Matrix<float, 4, 4> &modelMatrix,
    float opacity)
{
    TRACE();
    Entity model = _modelManager.createModel(modelName, modelMatrix);
    _modelManager.setModelShader(model, _shaderManager.getShader(shaderName));
    if (opacity < 0.0f || opacity > 1.0f)
        throw Exception("Opacity needs to be in the range [0, 1]");
    if (opacity < 1.0f)
        _transparentObjects.push_back({model, opacity});
    else
        _opaqueObjects.push_back(model);
    return (model);
}

void ObjectCoordinator::onUpdate(float deltaTime)
{
    TRACE();
    _modelManager.resetModelMatrices();
    for (auto *_system : _registeredSystems)
    {
        _system->onUpdate(deltaTime);
    }
}

void ObjectCoordinator::drawObjects3D(
    const Vector<float, 3> &cameraPosition,
    const Matrix<float, 4, 4> &view,
    const Matrix<float, 4, 4> &projection)
{
    TRACE();
    for (auto &object : _opaqueObjects)
    {
        Model *model = _modelManager.getModel(object);
        Shader *shader = model->getShader();
        shader->bind();
        shader->setFloat("u_alpha", 1.0f);
        shader->setMat4("model", _modelManager.getComponent<ModelMatrixComponent>(object).m);
        shader->setMat4("view", view);
        shader->setMat4("projection", projection);
        shader->setMat4("normalMatrix", normal_matrix(_modelManager.getComponent<ModelMatrixComponent>(object).m));
        shader->setFloat3("viewPos", cameraPosition);
        _directionalLightSourceSystem->onRender(shader);
        _pointLightSourceSystem->onRender(shader);
        _spotLightSourceSystem->onRender(shader);
        model->draw();
    }
    for (auto &object : _transparentObjects)
    {
        Model *model = _modelManager.getModel(object.first);
        Shader *shader = model->getShader();
        shader->bind();
        shader->setFloat("u_alpha", object.second);
        shader->setMat4("model", _modelManager.getComponent<ModelMatrixComponent>(object.first).m);
        shader->setMat4("view", view);
        shader->setMat4("projection", projection);
        shader->setMat4("normalMatrix", normal_matrix(_modelManager.getComponent<ModelMatrixComponent>(object.first).m));
        shader->setFloat3("viewPos", cameraPosition);
        _directionalLightSourceSystem->onRender(shader);
        _pointLightSourceSystem->onRender(shader);
        _spotLightSourceSystem->onRender(shader);
        model->draw();
    }
}

// u_alpha not used currently in 2D shader
void ObjectCoordinator::drawObjects2D(const Matrix<float, 4, 4>& projection)
{
    TRACE();
    for (auto &object : _opaqueObjects)
    {
        Model *model = _modelManager.getModel(object);
        Shader *shader = model->getShader();
        shader->bind();
        shader->setFloat("u_alpha", 1.0f);
        shader->setMat4("model", _modelManager.getComponent<ModelMatrixComponent>(object).m);
        shader->setMat4("projection", projection);
        model->draw();
    }
    for (auto &object : _transparentObjects)
    {
        Model *model = _modelManager.getModel(object.first);
        Shader *shader = model->getShader();
        shader->bind();
        shader->setFloat("u_alpha", object.second);
        shader->setMat4("model", _modelManager.getComponent<ModelMatrixComponent>(object.first).m);
        shader->setMat4("projection", projection);
        model->draw();
    }
}

void ObjectCoordinator::print()
{
    TRACE();
    _modelManager.print();
}

}
