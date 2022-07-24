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
    : GL_ID(other.GL_ID), _shaderName(other._shaderName), uniformLocationCache(other.uniformLocationCache)
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
        uniformLocationCache = other.uniformLocationCache;
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

void Shader::setInt(const string &name, GLint value)
{
    TRACE();
    GLCall(glUniform1i(getUniformLocation(name), value));
}

void Shader::setIntArr(const string &name, int *value, unsigned int size)
{
    TRACE();
    GLCall(glUniform1iv(getUniformLocation(name), size, value));
}

void Shader::setFloat(const string &name, GLfloat value)
{
    TRACE();
    GLCall(glUniform1f(getUniformLocation(name), value));
}

void Shader::setFloat2(const string &name, const Vector<GLfloat, 2> &value)
{
    TRACE();
    GLCall(glUniform2f(getUniformLocation(name), value[0], value[1]));
}

void Shader::setFloat3(const string &name, const Vector<GLfloat, 3> &value)
{
    TRACE();
    GLCall(glUniform3f(getUniformLocation(name), value[0], value[1], value[2]));
}

void Shader::setFloat4(const string &name, const Vector<GLfloat, 4> &value)
{
    TRACE();
    GLCall(glUniform4f(getUniformLocation(name), value[0], value[1], value[2], value[3]));
}

void Shader::setMat4(const string &name, const Matrix<GLfloat, 4, 4> &value)
{
    TRACE();
    GLCall(glUniformMatrix4fv(getUniformLocation(name), 1, GL_FALSE, value.data()));
}

GLint Shader::getUniformLocation(const string &name)
{
    TRACE();
    if (uniformLocationCache.count(name))
        return (uniformLocationCache[name]);

    GLCall(int location = glGetUniformLocation(GL_ID, name.c_str()));
    if (location == -1)
        LOG_E("Warning: uniform '" << name << "' does not exist! " << _shaderName);

    uniformLocationCache[name] = location;
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
