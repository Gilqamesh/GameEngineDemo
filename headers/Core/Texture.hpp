#ifndef TEXTURE_HPP
# define TEXTURE_HPP

# include "pch.hpp"

namespace GilqEngine
{

class Shader;

class Texture
{
GLuint GL_ID;
string _name;
Vector<float, 4> _color;
public:
    Texture(const Vector<float, 4>& color, const string &textureName);
    Texture(const string &texturePath, const string &textureName);
    ~Texture();

    // to avoid destruction of OpenGL context
    Texture(const Texture &other) = delete;
    Texture &operator=(const Texture &other) = delete;

    Texture(Texture &&other);
    Texture &operator=(Texture &&other);

    void bind(GLint slot = 0);
    void unbind();

    void setUniform(Shader *shader, const string &name, GLint slot);

    inline const string &getName() const { return (_name); }
};

}

#endif
