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
    for (auto _system : _registeredSystems)
        delete _system;
    _registeredSystems.clear();
}

void ObjectCoordinator::addMaterial(const std::string &materialName)
{
    TRACE();
    _materialManager.addMaterial(materialName);
}

void ObjectCoordinator::setAmbient(const std::string &materialName, const std::string &textureName)
{
    TRACE();
    Material &material = _materialManager.getMaterial(materialName);
    material.setAmbient(_textureManager.getTexture(textureName));
}

void ObjectCoordinator::setDiffuse(const std::string &materialName, const std::string &textureName)
{
    TRACE();
    Material &material = _materialManager.getMaterial(materialName);
    material.setDiffuse(_textureManager.getTexture(textureName));
}

void ObjectCoordinator::setSpecular(const std::string &materialName, const std::string &textureName)
{
    TRACE();
    Material &material = _materialManager.getMaterial(materialName);
    material.setSpecular(_textureManager.getTexture(textureName));
}

void ObjectCoordinator::setEmission(const std::string &materialName, const std::string &textureName)
{
    TRACE();
    Material &material = _materialManager.getMaterial(materialName);
    material.setEmission(_textureManager.getTexture(textureName));
}

void ObjectCoordinator::addShader(const std::string &vsPath, const std::string &fsPath, const std::string &shaderName)
{
    TRACE();
    _shaderManager.addShader(vsPath, fsPath, shaderName);
}

void ObjectCoordinator::addTexture(const std::string &texturePath, const std::string &textureName)
{
    TRACE();
    _textureManager.addTexture(texturePath, textureName);
}

Texture *ObjectCoordinator::getTexture(const std::string &textureName)
{
    TRACE();
    return (_textureManager.getTexture(textureName));
}

void ObjectCoordinator::loadModel(const std::string &modelPath, const std::string &modelName)
{
    TRACE();
    _modelManager.loadModel(modelPath, modelName);
}

void ObjectCoordinator::loadModel(
    IMeshFactory *meshFactory,
    const std::string &modelName,
    const std::string &materialName)
{
    TRACE();
    _modelManager.loadModel(meshFactory, modelName, materialName);
}

Entity ObjectCoordinator::createModel(
    const std::string &modelName,
    const std::string &shaderName,
    const Matrix<float, 4, 4> &modelMatrix,
    float opacity)
{
    TRACE();
    Entity model = _modelManager.createModel(modelName, modelMatrix);
    _modelManager.setModelShader(model, _shaderManager.getShader(shaderName));
    if (opacity < 0.0f || opacity > 1.0f)
        throw std::out_of_range("Opacity needs to be in the range [0, 1]");
    if (opacity < 1.0f)
        _transparentObjects[model] = opacity;
    else
        _opaqueObjects[model] = opacity;
    return (model);
}

const Vector<float, 3> &ObjectCoordinator::getAveragePoint(const std::string &modelName)
{
    TRACE();
    return (_modelManager.getAveragePoint(modelName));
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

void ObjectCoordinator::drawObjects(
    const Vector<float, 3> &cameraPosition,
    const Matrix<float, 4, 4> &view,
    const Matrix<float, 4, 4> &projection)
{
    TRACE();
    for (auto &object : _opaqueObjects)
    {
        Model *model = _modelManager.getModel(object.first);
        Shader *shader = model->getShader();
        shader->bind();
        shader->setFloat("u_alpha", 1.0f);
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
    for (auto &object : _transparentObjects)
    {
        Model *model = _modelManager.getModel(object.first);
        Shader *shader = model->getShader();
        shader->bind();
        shader->setFloat("u_alpha", _transparentObjects[object.first]);
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

// Is not worked out.
void ObjectCoordinator::drawObjects(void)
{
    TRACE();
    for (auto &object : _opaqueObjects)
    {
        Model *model = _modelManager.getModel(object.first);
        Shader *shader = model->getShader();
        shader->bind();
        shader->setFloat("u_alpha", 1.0f);
        shader->setMat4("model", _modelManager.getComponent<ModelMatrixComponent>(object.first).m);
        shader->setMat4("view", identity_matrix<float, 4, 4>());
        shader->setMat4("projection", identity_matrix<float, 4, 4>());
        shader->setMat4("normalMatrix", normal_matrix(_modelManager.getComponent<ModelMatrixComponent>(object.first).m));
        shader->setFloat3("viewPos", Vector<float, 3>(0.0f, 0.0f, 0.0f));
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
        shader->setFloat("u_alpha", _transparentObjects[object.first]);
        shader->setMat4("model", _modelManager.getComponent<ModelMatrixComponent>(object.first).m);
        shader->setMat4("view", identity_matrix<float, 4, 4>());
        shader->setMat4("projection", identity_matrix<float, 4, 4>());
        shader->setMat4("normalMatrix", normal_matrix(_modelManager.getComponent<ModelMatrixComponent>(object.first).m));
        shader->setFloat3("viewPos", Vector<float, 3>(0.0f, 0.0f, 0.0f));
        _directionalLightSourceSystem->onRender(shader);
        _pointLightSourceSystem->onRender(shader);
        _spotLightSourceSystem->onRender(shader);
        model->draw();
    }
}

void ObjectCoordinator::print()
{
    TRACE();
    _modelManager.print();
}

}
