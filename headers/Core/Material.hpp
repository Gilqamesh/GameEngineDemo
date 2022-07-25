#ifndef MATERIAL_HPP
# define MATERIAL_HPP

# include "pch.hpp"
# include "Texture.hpp"
# include "Shader.hpp"

namespace GilqEngine
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
Texture     *_ambient;
Texture     *_diffuse;
Texture     *_specular;
Texture     *_emission;
float       _shininess;
string      _name;
public:
    Material();
    Material(const string &name);

    Material(const Material &other);
    Material &operator=(const Material &other);

    inline Texture *getAmbient() const { return (_ambient); }
    inline Texture *getDiffuse() const { return (_diffuse); }
    inline Texture *getSpecular() const { return (_specular); }
    inline Texture *getEmission() const { return (_emission); }
    inline float getShininess() const { return (_shininess); }
    inline const string &getName() const { return (_name); }

    inline void setAmbient(Texture *ambient) { this->_ambient = ambient; }
    inline void setDiffuse(Texture *diffuse) { this->_diffuse = diffuse; }
    inline void setSpecular(Texture *specular) { this->_specular = specular; }
    inline void setEmission(Texture *emission) { this->_emission = emission; }
    inline void setShininess(float shininess) { this->_shininess = shininess; }
    inline void setName(const string &name) { _name = name; }

    /*
     * Does not bind 'shader'
     */
    void setShaderUniforms(Shader *shader);
};

}

#endif
