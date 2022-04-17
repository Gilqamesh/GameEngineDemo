#ifndef TEXTURE_HPP
# define TEXTURE_HPP

# include "pch.hpp"

namespace NAMESPACE
{

class Shader;

class Texture
{
GLuint GL_ID;
std::string name;
public:
    Texture(const std::string &texturePath, const std::string &textureName);
    ~Texture();

    void bind(GLuint slot = 0) const;
    void unbind() const;

    void setUniform(Shader *shader, const std::string &name, GLint value) const;

    inline const std::string &getName() const { return (_name); }
};

}

#endif
