#include "Managers/ObjectCoordinator.hpp"
#include "Log.hpp"

namespace GilqEngine
{

ObjectCoordinator::ObjectCoordinator()
{
    TRACE();
    _modelManager.setMaterialManager(&_materialManager);
    _modelManager.setTextureManager(&_textureManager);
    _modelManager.registerComponent<ModelMatrixComponent>();
    _modelManager.registerComponent<PositionComponent2D>();
    _modelManager.registerComponent<PositionComponent3D>();
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

Entity ObjectCoordinator::createModel2D(
    const string &modelName,
    const string &shaderName,
    const Matrix<float, 4, 4> &modelMatrix,
    const Vector<float, 2>& position,
    const Vector<float, 4>& color,
    float opacity)
{
    TRACE();
    Entity model = _modelManager.createModel(modelName);
    _modelManager.attachComponent<ModelMatrixComponent>(model, {modelMatrix});
    _modelManager.attachComponent<PositionComponent2D>(model, {position});
    _modelMatrices.push_back(modelMatrix);
    _objectPositions2D.push_back(position);
    _objectColors.push_back(color);
    _modelManager.setModelShader(model, _shaderManager.getShader(shaderName));
    if (opacity < 0.0f || opacity > 1.0f)
        throw Exception("Opacity needs to be in the range [0, 1]");
    if (opacity < 1.0f)
        _transparentObjects.push_back({model, opacity});
    else
        _opaqueObjects.push_back(model);
    return (model);
}

Entity ObjectCoordinator::createModel3D(
    const string &modelName,
    const string &shaderName,
    const Matrix<float, 4, 4> &modelMatrix,
    const Vector<float, 3>& position,
    const Vector<float, 4>& color,
    float opacity)
{
    TRACE();
    Entity model = _modelManager.createModel(modelName);
    _modelManager.attachComponent<ModelMatrixComponent>(model, {modelMatrix});
    _modelManager.attachComponent<PositionComponent3D>(model, {position});
    _modelMatrices.push_back(modelMatrix);
    _objectPositions3D.push_back(position);
    _objectColors.push_back(color);
    _modelManager.setModelShader(model, _shaderManager.getShader(shaderName));
    if (opacity < 0.0f || opacity > 1.0f)
        throw Exception("Opacity needs to be in the range [0, 1]");
    if (opacity < 1.0f)
        _transparentObjects.push_back({model, opacity});
    else
        _opaqueObjects.push_back(model);
    return (model);
}

void ObjectCoordinator::updateColor(Entity object, const Vector<float, 4>& color)
{
    TRACE();
    _objectColors[object] = color;
}

void ObjectCoordinator::updatePosition3D(Entity object, const Vector<float, 3>& position)
{
    TRACE();
    _objectPositions3D[object] = position;
}

void ObjectCoordinator::updatePosition2D(Entity object, const Vector<float, 2>& position)
{
    TRACE();
    _objectPositions2D[object] = position;
}

void ObjectCoordinator::updateModelMatrix(Entity object, const Matrix<float, 4, 4>& model)
{
    TRACE();
    _modelMatrices[object] = model;
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

void ObjectCoordinator::onUpdate(float deltaTime)
{
    TRACE();
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
        shader->setMat4("model",
            _modelMatrices[object].m *
            translation_matrix(_objectPositions2D[object].p)
        );
        shader->setMat4("view", view);
        shader->setMat4("projection", projection);
        shader->setMat4("normalMatrix", normal_matrix(_modelMatrices[object].m));
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
        shader->setMat4("model",
            _modelMatrices[object.first].m *
            translation_matrix(_objectPositions2D[object.first].p)
        );
        shader->setMat4("view", view);
        shader->setMat4("projection", projection);
        shader->setMat4("normalMatrix", normal_matrix(_modelMatrices[object.first].m));
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
        shader->setMat4("model",
            _modelMatrices[object].m *
            translation_matrix(_objectPositions2D[object].p)
        );
        shader->setMat4("projection", projection);
        shader->setFloat4("u_color", _objectColors[object]);
        model->draw();
    }
    for (auto &object : _transparentObjects)
    {
        Model *model = _modelManager.getModel(object.first);
        Shader *shader = model->getShader();
        shader->bind();
        shader->setFloat("u_alpha", object.second);
        shader->setMat4("model",
            _modelMatrices[object.first].m *
            translation_matrix(_objectPositions2D[object.first].p)
        );
        shader->setMat4("projection", projection);
        shader->setFloat4("u_color", _objectColors[object.first]);
        model->draw();
    }
}

void ObjectCoordinator::print()
{
    TRACE();
    _modelManager.print();
}

}
