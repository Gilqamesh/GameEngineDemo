#ifndef MATERIAL_HPP
# define MATERIAL_HPP

# include "pch.hpp"
# include "Texture.hpp"
# include "Shader.hpp"

namespace NAMESPACE
{

/*
 * For now Shaders are hardcoded so that they expect these Textures
 * In the future there are couple of things to improve:
 *  - instead of having multiple Textures in Material, there should be a single Texture layout that is a configuration of multiple Textures
 *  - need to generate shaders runtime so that Textures can be handled dynamically and Materials can have any number of Textures
 */
class Material
{
Texture *ambient;
Texture *diffuse;
Texture *specular;
Texture *emission;
Shader *_shader;
float shininess;
public:
    Material(Shader *shader);
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
