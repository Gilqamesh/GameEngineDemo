#include "Managers/ShaderManager.hpp"
#include "Debug/Trace.hpp"

namespace GilqEngine
{

ShaderManager::~ShaderManager()
{
    TRACE();
    clear();
}

void ShaderManager::addShader(Shader *shader)
{
    TRACE();
    if (exists(shader->getName()) == true)
        throw std::runtime_error("Shader " + shader->getName() + " already exists in the ShaderManager");

    _shaders[shader->getName()] = shader;
}

void ShaderManager::addShader(const std::string &vertexShaderPath, const std::string &fragmentShaderPath, const std::string &shaderName)
{
    TRACE();
    if (exists(shaderName) == true)
        throw std::runtime_error("Shader " + shaderName + " already exists in the ShaderManager");

    _shaders[shaderName] = new Shader(vertexShaderPath, fragmentShaderPath, shaderName);
}

void ShaderManager::deleteShader(const std::string &shaderName)
{
    TRACE();
    if (exists(shaderName) == false)
        throw std::runtime_error("Shader " + shaderName + " does not exist in the ShaderManager");

    delete _shaders[shaderName];
    _shaders.erase(shaderName);
}

void ShaderManager::clear()
{
    TRACE();
    for (auto shader : _shaders)
        delete shader.second;

    _shaders.clear();
}

Shader *ShaderManager::getShader(const std::string &shaderName)
{
    TRACE();
    if (exists(shaderName) == false)
        throw std::runtime_error("Shader " + shaderName + " does not exist in the ShaderManager");

    return (_shaders[shaderName]);
}

bool ShaderManager::exists(const std::string &shaderName) const
{
    TRACE();
    return (_shaders.count(shaderName));
}


}
