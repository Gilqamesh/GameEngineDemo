#ifndef SHADER_HPP
# define SHADER_HPP

# include "pch.hpp"
# include "Math/Vector.hpp"
# include "Math/Matrix.hpp"

namespace NAMESPACE
{

class Shader
{
GLuint GL_ID;
std::string _shaderName;
std::unordered_map<std::string, GLint> uniformLocationCache;
public:
    Shader(const std::string &vertexShaderPath, const std::string &fragmentShaderPath, const std::string &shaderName);
    ~Shader();

    void bind();
    void unbind();

    void setInt(const std::string &name, GLint value);
    void setIntArr(const std::string &name, int *value, unsigned int size);
    void setFloat(const std::string &name, GLfloat value);
    void setFloat2(const std::string &name, const Vector<GLfloat, 2> &value);
    void setFloat3(const std::string &name, const Vector<GLfloat, 3> &value);
    void setFloat4(const std::string &name, const Vector<GLfloat, 4> &value);
    void setMat4(const std::string &name, const Matrix<GLfloat, 4, 4> &value);

    inline const std::string &getName() const { return (_shaderName); }
private:
    GLint getUniformLocation(const std::string &name);
    GLuint createShaderProgram(const std::string &vertexShaderSourceCode, const std::string &fragmentShaderSourceCode);
    GLuint compileShader(GLuint shaderType, const std::string &sourceCode);
    std::string parseShader(const std::string &shaderPath);
};

}

#endif
