#ifndef SHADERMANAGER_HPP
# define SHADERMANAGER_HPP

# include "Core/Shader.hpp"

namespace NAMESPACE
{

class ShaderManager
{
std::unordered_map<std::string, Shader *> _shaders;
public:
    ~ShaderManager();
    void addShader(Shader *shader);
    void addShader(const std::string &vertexShaderPath, const std::string &fragmentShaderPath, const std::string &shaderName);
    Shader *getShader(const std::string &shaderName);
    bool exists(const std::string &shaderName) const;
};

}

#endif
