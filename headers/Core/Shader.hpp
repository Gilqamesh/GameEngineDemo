#ifndef SHADER_HPP
# define SHADER_HPP

# include "pch.hpp"
# include "Math/Vector.hpp"
# include "Math/Matrix.hpp"

namespace GilqEngine
{

class Shader
{
GLuint GL_ID;
string _shaderName;
unordered_map<string, GLint> uniformLocationCache;
public:
    Shader(const string &vertexShaderPath, const string &fragmentShaderPath, const string &shaderName);
    ~Shader();

    // to avoid destruction of OpenGL context
    Shader(const Shader &other) = delete;
    Shader &operator=(const Shader &other) = delete;

    Shader(Shader &&other);
    Shader &operator=(Shader &&other);

    void bind();
    void unbind();

    void setInt(const string &name, GLint value);
    void setIntArr(const string &name, int *value, unsigned int size);
    void setFloat(const string &name, GLfloat value);
    void setFloat2(const string &name, const Vector<GLfloat, 2> &value);
    void setFloat3(const string &name, const Vector<GLfloat, 3> &value);
    void setFloat4(const string &name, const Vector<GLfloat, 4> &value);
    void setMat4(const string &name, const Matrix<GLfloat, 4, 4> &value);

    inline const string &getName() const { return (_shaderName); }
    inline GLuint getId() const { return (GL_ID); }
private:
    GLint getUniformLocation(const string &name);
    GLuint createShaderProgram(const string &vertexShaderSourceCode, const string &fragmentShaderSourceCode);
    GLuint compileShader(GLuint shaderType, const string &sourceCode);
    string parseShader(const string &shaderPath);
};

}

#endif
