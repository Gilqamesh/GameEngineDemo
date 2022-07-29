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
unordered_map<string, GLint> _uniformLocationCache;

vector<pair<string, GLint>>                     _intUniforms;
vector<pair<string, pair<int *, uint32>>>       _intArrUniforms;
vector<pair<string, GLfloat>>                   _floatUniforms;
vector<pair<string, Vector<GLfloat, 2>>>        _float2Uniforms;
vector<pair<string, Vector<GLfloat, 3>>>        _float3Uniforms;
vector<pair<string, Vector<GLfloat, 4>>>        _float4Uniforms;
vector<pair<string, Matrix<GLfloat, 4, 4>>>     _mat4Uniforms;
public:
    Shader(const string &vertexShaderPath, const string &fragmentShaderPath, const string &shaderName);
    ~Shader();

    // to avoid destruction of OpenGL context
    Shader(const Shader &other) = delete;
    Shader &operator=(const Shader &other) = delete;

    Shader(Shader &&other);
    Shader &operator=(Shader &&other);

    void bind(void);
    void unbind(void);

    void setUniforms(void);

    /*
     * Add and remember uniform @uniformName and @value for the shader.
     */
    void addInt(const string &uniformName, GLint value);
    void addIntArr(const string &uniformName, int *value, uint32 size);
    void addFloat(const string &uniformName, GLfloat value);
    void addFloat2(const string &uniformName, const Vector<GLfloat, 2> &value);
    void addFloat3(const string &uniformName, const Vector<GLfloat, 3> &value);
    void addFloat4(const string &uniformName, const Vector<GLfloat, 4> &value);
    void addMat4(const string &uniformName, const Matrix<GLfloat, 4, 4> &value);

    /*
     * Update stored uniform @uniformName with @value.
     */
    void updateInt(const string &uniformName, GLint value);
    void updateIntArr(const string &uniformName, int *value, uint32 size);
    void updateFloat(const string &uniformName, GLfloat value);
    void updateFloat2(const string &uniformName, const Vector<GLfloat, 2> &value);
    void updateFloat3(const string &uniformName, const Vector<GLfloat, 3> &value);
    void updateFloat4(const string &uniformName, const Vector<GLfloat, 4> &value);
    void updateMat4(const string &uniformName, const Matrix<GLfloat, 4, 4> &value);

    /*
     * Set uniforms for one time use for the shader.
     */
    void setInt(const string &uniformName, GLint value);
    void setIntArr(const string &uniformName, int *value, uint32 size);
    void setFloat(const string &uniformName, GLfloat value);
    void setFloat2(const string &uniformName, const Vector<GLfloat, 2> &value);
    void setFloat3(const string &uniformName, const Vector<GLfloat, 3> &value);
    void setFloat4(const string &uniformName, const Vector<GLfloat, 4> &value);
    void setMat4(const string &uniformName, const Matrix<GLfloat, 4, 4> &value);

    inline const string &getName() const { return (_shaderName); }
    inline GLuint getId() const { return (GL_ID); }
private:
    GLint getUniformLocation(const string &uniformName);
    GLuint createShaderProgram(const string &vertexShaderSourceCode, const string &fragmentShaderSourceCode);
    GLuint compileShader(GLuint shaderType, const string &sourceCode);
    string parseShader(const string &shaderPath);
};

}

#endif
