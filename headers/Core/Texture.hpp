#ifndef TEXTURE_HPP
# define TEXTURE_HPP

# include "pch.hpp"

namespace NAMESPACE
{

class Shader;

class Texture
{
GLuint GL_ID;
public:
    Texture(const std::string &path);
    ~Texture();
    void bind(GLuint slot = 0) const;
    void unbind() const;
    void setUniform(Shader *shader) const;
};

}

#endif
