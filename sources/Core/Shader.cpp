#include "Core/Shader.hpp"
#include "Log.hpp"

namespace GilqEngine
{

Shader::Shader(const string &vertexShaderPath, const string &fragmentShaderPath, const string &shaderName)
    : _shaderName(shaderName)
{
    TRACE();
    string vertexShaderSourceCode = parseShader(vertexShaderPath);
    string fragmentShaderSourceCode = parseShader(fragmentShaderPath);
    GL_ID = createShaderProgram(vertexShaderSourceCode, fragmentShaderSourceCode);
}

Shader::~Shader()
{
    TRACE();
    GLCall(glDeleteProgram(GL_ID));
}

Shader::Shader(Shader &&other)
    : GL_ID(other.GL_ID),
      _shaderName(other._shaderName),
      _uniformLocationCache(other._uniformLocationCache),
      _intUniforms(other._intUniforms),
      _intArrUniforms(other._intArrUniforms),
      _floatUniforms(other._floatUniforms),
      _float2Uniforms(other._float2Uniforms),
      _float3Uniforms(other._float3Uniforms),
      _float4Uniforms(other._float4Uniforms),
      _mat4Uniforms(other._mat4Uniforms)
{
    TRACE();
    other.GL_ID = 0;
}

Shader &Shader::operator=(Shader &&other)
{
    TRACE();
    if (this != &other)
    {
        GL_ID = other.GL_ID;
        _shaderName = other._shaderName;
        _uniformLocationCache = other._uniformLocationCache;
        _intUniforms = other._intUniforms;
        _intArrUniforms = other._intArrUniforms;
        _floatUniforms = other._floatUniforms;
        _float2Uniforms = other._float2Uniforms;
        _float3Uniforms = other._float3Uniforms;
        _float4Uniforms = other._float4Uniforms;
        _mat4Uniforms = other._mat4Uniforms;
        other.GL_ID = 0;
    }
    return (*this);
}

void Shader::bind()
{
    TRACE();
    GLCall(glUseProgram(GL_ID));
}

void Shader::unbind()
{
    TRACE();
    GLCall(glUseProgram(0));
}

void Shader::setUniforms(void)
{
    TRACE();
    for (const auto& p : _intUniforms)
    {
        GLCall(glUniform1i(getUniformLocation(p.first), p.second));
    }
    for (const auto& p : _intArrUniforms)
    {
        GLCall(glUniform1iv(getUniformLocation(p.first), p.second.second, p.second.first));
    }
    for (const auto& p : _floatUniforms)
    {
        GLCall(glUniform1f(getUniformLocation(p.first), p.second));
    }
    for (const auto& p : _float2Uniforms)
    {
        GLCall(glUniform2f(getUniformLocation(p.first), p.second[0], p.second[1]));
    }
    for (const auto& p : _float3Uniforms)
    {
        GLCall(glUniform3f(getUniformLocation(p.first), p.second[0], p.second[1], p.second[2]));
    }
    for (const auto& p : _float4Uniforms)
    {
        GLCall(glUniform4f(getUniformLocation(p.first), p.second[0], p.second[1], p.second[2], p.second[3]));
    }
    for (const auto& p : _mat4Uniforms)
    {
        GLCall(glUniformMatrix4fv(getUniformLocation(p.first), 1, GL_FALSE, p.second.data()));
    }
}

void Shader::addInt(const string &uniformName, GLint value)
{
    TRACE();
    _intUniforms.push_back({ uniformName, value });
}

void Shader::addIntArr(const string &uniformName, int *value, uint32 size)
{
    TRACE();
    _intArrUniforms.push_back({ uniformName, { value, size } });
}

void Shader::addFloat(const string &uniformName, GLfloat value)
{
    TRACE();
    _floatUniforms.push_back({ uniformName, value });
}

void Shader::addFloat2(const string &uniformName, const Vector<GLfloat, 2> &value)
{
    TRACE();
    _float2Uniforms.push_back({ uniformName, value });
}

void Shader::addFloat3(const string &uniformName, const Vector<GLfloat, 3> &value)
{
    TRACE();
    _float3Uniforms.push_back({ uniformName, value });
}

void Shader::addFloat4(const string &uniformName, const Vector<GLfloat, 4> &value)
{
    TRACE();
    _float4Uniforms.push_back({ uniformName, value });
}

void Shader::addMat4(const string &uniformName, const Matrix<GLfloat, 4, 4> &value)
{
    TRACE();
    _mat4Uniforms.push_back({ uniformName, value });
}

void Shader::updateInt(const string &uniformName, GLint value)
{
    TRACE();
    for (auto &p : _intUniforms)
    {
        if (p.first == uniformName)
        {
            p.second = value;
            return ;
        }
    }
    LOG_E("Uniform " << uniformName << " is not stored for " << _shaderName);
}

void Shader::updateIntArr(const string &uniformName, int *value, uint32 size)
{
    TRACE();
    for (auto &p : _intArrUniforms)
    {
        if (p.first == uniformName)
        {
            p.second.first = value;
            p.second.second = size;
            return ;
        }
    }
    LOG_E("Uniform " << uniformName << " is not stored for " << _shaderName);
}

void Shader::updateFloat(const string &uniformName, GLfloat value)
{
    TRACE();
    for (auto &p : _floatUniforms)
    {
        if (p.first == uniformName)
        {
            p.second = value;
            return ;
        }
    }
    LOG_E("Uniform " << uniformName << " is not stored for " << _shaderName);
}

void Shader::updateFloat2(const string &uniformName, const Vector<GLfloat, 2> &value)
{
    TRACE();
    for (auto &p : _float2Uniforms)
    {
        if (p.first == uniformName)
        {
            p.second = value;
            return ;
        }
    }
    LOG_E("Uniform " << uniformName << " is not stored for " << _shaderName);
}

void Shader::updateFloat3(const string &uniformName, const Vector<GLfloat, 3> &value)
{
    TRACE();
    for (auto &p : _float3Uniforms)
    {
        if (p.first == uniformName)
        {
            p.second = value;
            return ;
        }
    }
    LOG_E("Uniform " << uniformName << " is not stored for " << _shaderName);
}

void Shader::updateFloat4(const string &uniformName, const Vector<GLfloat, 4> &value)
{
    TRACE();
    for (auto &p : _float4Uniforms)
    {
        if (p.first == uniformName)
        {
            p.second = value;
            return ;
        }
    }
    LOG_E("Uniform " << uniformName << " is not stored for " << _shaderName);
}

void Shader::updateMat4(const string &uniformName, const Matrix<GLfloat, 4, 4> &value)
{
    TRACE();
    for (auto &p : _mat4Uniforms)
    {
        if (p.first == uniformName)
        {
            p.second = value;
            return ;
        }
    }
    LOG_E("Uniform " << uniformName << " is not stored for " << _shaderName);
}

void Shader::setInt(const string &uniformName, GLint value)
{
    TRACE();
    GLCall(glUniform1i(getUniformLocation(uniformName), value));
}

void Shader::setIntArr(const string &uniformName, int *value, uint32 size)
{
    TRACE();
    GLCall(glUniform1iv(getUniformLocation(uniformName), size, value));
}

void Shader::setFloat(const string &uniformName, GLfloat value)
{
    TRACE();
    GLCall(glUniform1f(getUniformLocation(uniformName), value));
}

void Shader::setFloat2(const string &uniformName, const Vector<GLfloat, 2> &value)
{
    TRACE();
    GLCall(glUniform2f(getUniformLocation(uniformName), value[0], value[1]));
}

void Shader::setFloat3(const string &uniformName, const Vector<GLfloat, 3> &value)
{
    TRACE();
    GLCall(glUniform3f(getUniformLocation(uniformName), value[0], value[1], value[2]));
}

void Shader::setFloat4(const string &uniformName, const Vector<GLfloat, 4> &value)
{
    TRACE();
    GLCall(glUniform4f(getUniformLocation(uniformName), value[0], value[1], value[2], value[3]));
}

void Shader::setMat4(const string &uniformName, const Matrix<GLfloat, 4, 4> &value)
{
    TRACE();
    GLCall(glUniformMatrix4fv(getUniformLocation(uniformName), 1, GL_FALSE, value.data()));
}

GLint Shader::getUniformLocation(const string &uniformName)
{
    TRACE();
    if (_uniformLocationCache.count(uniformName))
        return (_uniformLocationCache[uniformName]);

    GLCall(int location = glGetUniformLocation(GL_ID, uniformName.c_str()));
    if (location == -1)
        LOG_E("Warning: uniform '" << uniformName << "' does not exist! " << _shaderName);

    _uniformLocationCache[uniformName] = location;
    return (location);
}

GLuint Shader::createShaderProgram(const string &vertexShaderSourceCode, const string &fragmentShaderSourceCode)
{
    TRACE();
    GLCall(GLuint program = glCreateProgram());
    GLuint vs = compileShader(GL_VERTEX_SHADER, vertexShaderSourceCode);
    GLuint fs = compileShader(GL_FRAGMENT_SHADER, fragmentShaderSourceCode);

    GLCall(glAttachShader(program, vs));
    GLCall(glAttachShader(program, fs));
    GLCall(glLinkProgram(program));
    GLCall(glValidateProgram(program));

    GLCall(glDeleteShader(vs));
    GLCall(glDeleteShader(fs));

    return (program);
}

GLuint Shader::compileShader(GLuint shaderType, const string &sourceCode)
{
    TRACE();
    GLCall(GLuint shader = glCreateShader(shaderType));
    const char *src = sourceCode.c_str();
    GLCall(glShaderSource(shader, 1, &src, nullptr));
    GLCall(glCompileShader(shader));

    int compilation_result;
    GLCall(glGetShaderiv(shader, GL_COMPILE_STATUS, &compilation_result));
    if (compilation_result == GL_FALSE) // shader compilation failed
    {
        int length;
        GLCall(glGetShaderiv(shader, GL_INFO_LOG_LENGTH, &length));
        char *message = new char[length];
        GLCall(glGetShaderInfoLog(shader, length, &length, message));
        LOG_E("Failed to compile shader! " << _shaderName);
        LOG_E(message);
        delete [] message;
        GLCall(glDeleteShader(shader));
        return (0);
    }

    return (shader);
}

string Shader::parseShader(const string &shaderPath)
{
    TRACE();
    ifstream ifs(shaderPath);
    if (!ifs)
        throw runtime_error("Could not open shader file for parsing: " + shaderPath + " " + _shaderName);

    string line;
    stringstream ss;
    while (getline(ifs, line))
        ss << line << "\n";

    return (ss.str());
}

}
