#ifndef MATERIAL_HPP
# define MATERIAL_HPP

# include "pch.hpp"
# include "Texture.hpp"
# include "Interfaces/IShader.hpp"

namespace NAMESPACE
{

class Material
{
Texture *ambient;
Texture *diffuse;
Texture *specular;
Texture *emission;
IShader &shader;
float shininess;
public:
    Material(IShader &shader);
    inline const Texture *getAmbient() const { return (ambient); }
    inline const Texture *getDiffuse() const { return (diffuse); }
    inline const Texture *getSpecular() const { return (specular); }
    inline const Texture *getEmission() const { return (emission); }
    inline float getShininess() const { return (shininess); }

    inline void setAmbient(Texture *ambient) { this->ambient = ambient; }
    inline void setDiffuse(Texture *diffuse) { this->diffuse = diffuse; }
    inline void setSpecular(Texture *specular) { this->specular = specular; }
    inline void setEmission(Texture *emission) { this->emission = emission; }
    inline void setShininess(float shininess) { this->shininess = shininess; }

    void bind();
    void unbind();
};

}

#endif
