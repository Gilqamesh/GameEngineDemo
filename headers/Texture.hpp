#ifndef TEXTURE_HPP
# define TEXTURE_HPP

# include "pch.hpp"

namespace NAMESPACE
{

class IShader;

class Texture
{
unsigned int GL_ID;
public:
    Texture(const std::string &path);
    ~Texture();
    void bind(unsigned int slot = 0) const;
    void unbind() const;
    void setUniform(IShader &shader) const;
};

}

#endif
