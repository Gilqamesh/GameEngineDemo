#ifndef TEXTURE_HPP
# define TEXTURE_HPP

# include "pch.hpp"

namespace GilqEngine
{

class Shader;

class Texture
{
GLuint GL_ID;
std::string _name;
Vector<float, 4> _color;
public:
    Texture(const Vector<float, 4>& color, const std::string &textureName);
    Texture(const std::string &texturePath, const std::string &textureName);
    ~Texture();

    // to avoid destruction of OpenGL context
    Texture(const Texture &other) = delete;
    Texture &operator=(const Texture &other) = delete;

    Texture(Texture &&other);
    Texture &operator=(Texture &&other);

    void bind(GLint slot = 0);
    void unbind();

    void setUniform(Shader *shader, const std::string &name, GLint slot);

    inline const std::string &getName() const { return (_name); }
};

}

#endif
