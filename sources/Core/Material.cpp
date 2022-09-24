#include "Core/Material.hpp"
#include "Core/Texture.hpp"
#include "Singletons/NullTexture.hpp"
#include "Debug/Trace.hpp"
#include "Debug/OpenGL.hpp"

namespace GilqEngine
{

    Material::Material()
        : _name("Default Material Name")
    {
        TRACE();
        _ambient = NullTexture::getInstance();
        _diffuse = NullTexture::getInstance();
        _specular = NullTexture::getInstance();
        _emission = NullTexture::getInstance();
        _shininess = 0.5f;
    }

    Material::Material(const string &name)
        : _name(name)
    {
        TRACE();
        _ambient = NullTexture::getInstance();
        _diffuse = NullTexture::getInstance();
        _specular = NullTexture::getInstance();
        _emission = NullTexture::getInstance();
        _shininess = 0.5f;
    }

    Material::Material(const Material &other)
        : _ambient(other._ambient),
          _diffuse(other._diffuse),
          _specular(other._specular),
          _emission(other._emission),
          _shininess(other._shininess),
          _name(other._name)
    {
        TRACE();
    }

    Material &Material::operator=(const Material &other)
    {
        TRACE();
        if (this != &other)
        {
            _ambient = other._ambient;
            _diffuse = other._diffuse;
            _specular = other._specular;
            _emission = other._emission;
            _shininess = other._shininess;
            _name = other._name;
        }
        return (*this);
    }

    void Material::setShaderUniforms(Shader *shader)
    {
        TRACE();
        u8 textureSlot = 0;
        if (_ambient != NullTexture::getInstance())
        {
            _ambient->setUniform(shader, "u_ambient", textureSlot++);
        }
        if (_diffuse != NullTexture::getInstance())
        {
            _diffuse->setUniform(shader, "u_diffuse", textureSlot++);
        }
        if (_specular != NullTexture::getInstance())
        {
            _specular->setUniform(shader, "u_specular", textureSlot++);
            shader->setFloat("shininess", _shininess);
        }
        if (_emission != NullTexture::getInstance())
        {
            _emission->setUniform(shader, "u_emission", textureSlot++);
        }
    }

}
