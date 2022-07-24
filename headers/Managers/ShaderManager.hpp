#ifndef SHADERMANAGER_HPP
# define SHADERMANAGER_HPP

# include "Core/Shader.hpp"

namespace GilqEngine
{

class ShaderManager
{
unordered_map<string, Shader *> _shaders;
public:
    ~ShaderManager();
    void addShader(Shader *shader);
    void addShader(const string &vertexShaderPath, const string &fragmentShaderPath, const string &shaderName);
    
    void deleteShader(const string &shaderName);
    void clear();

    Shader *getShader(const string &shaderName);
    bool exists(const string &shaderName) const;
};

}

#endif
