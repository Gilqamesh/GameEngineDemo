#include "Managers/ShaderManager.hpp"
#include "Debug/Trace.hpp"

namespace NAMESPACE
{

ShaderManager::~ShaderManager()
{
    TRACE();
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

    Shader *shader = new Shader(vertexShaderPath, fragmentShaderPath, shaderName);
    _shaders[shaderName] = shader;
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
