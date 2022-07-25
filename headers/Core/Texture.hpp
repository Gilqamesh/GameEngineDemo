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
public:
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

    inline GLuint getGL_ID(void) const { return (GL_ID); }
    inline const string &getName(void) const { return (_name); }
};

}

#endif
