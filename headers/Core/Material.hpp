#ifndef MATERIAL_HPP
# define MATERIAL_HPP

# include "pch.hpp"
# include "Texture.hpp"
# include "Shader.hpp"

namespace NAMESPACE
{

/*
 * Does not own it's member objects
 * For now Shaders are hardcoded so that they expect these Textures
 * In the future there are couple of things to improve:
 *  - instead of having multiple Textures in Material, there should be a single Texture layout that is a configuration of multiple Textures
 *  - need to generate shaders runtime so that Textures can be handled dynamically and Materials can have any number of Textures
 */
class Material
{
Texture *_ambient;
Texture *_diffuse;
Texture *_specular;
Texture *_emission;
Shader *_shader;
float _shininess;
public:
    Material(); // Warning: Shader needs to be set
    Material(Shader *shader);
    inline const Texture *getAmbient() const { return (_ambient); }
    inline const Texture *getDiffuse() const { return (_diffuse); }
    inline const Texture *getSpecular() const { return (_specular); }
    inline const Texture *getEmission() const { return (_emission); }
    inline float getShininess() const { return (_shininess); }

    inline void setAmbient(Texture *ambient) { this->_ambient = ambient; }
    inline void setDiffuse(Texture *diffuse) { this->_diffuse = diffuse; }
    inline void setSpecular(Texture *specular) { this->_specular = specular; }
    inline void setEmission(Texture *emission) { this->_emission = emission; }
    inline void setShader(Shader *shader) { this->_shader = shader; }
    inline void setShininess(float shininess) { this->_shininess = shininess; }

    void bind();
    void unbind();
};

}

#endif
