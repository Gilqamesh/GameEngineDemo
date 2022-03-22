#ifndef ITEXTURE_HPP
# define ITEXTURE_HPP

class IShader;

class ITexture
{
public:
    virtual ~ITexture();
    virtual void bind(unsigned int slot = 0) const = 0;
    virtual void unbind() const = 0;
    virtual void setUniform(IShader &shader) const = 0;
};

#endif
