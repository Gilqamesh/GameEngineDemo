#include "Core/Material.hpp"
#include "Core/Texture.hpp"
#include "Singletons/NullTexture.hpp"
#include "Debug/Trace.hpp"
#include "Debug/OpenGL.hpp"

namespace NAMESPACE
{

Material::Material()
    : _shader(nullptr), _name("Default Material Name")
{
    TRACE();
    _ambient = NullTexture::getInstance();
    _diffuse = NullTexture::getInstance();
    _specular = NullTexture::getInstance();
    _emission = NullTexture::getInstance();
    _shininess = 0.5f;
}

Material::Material(Shader *shader, const std::string &name)
    : _shader(shader), _name(name)
{
    TRACE();
    _ambient = NullTexture::getInstance();
    _diffuse = NullTexture::getInstance();
    _specular = NullTexture::getInstance();
    _emission = NullTexture::getInstance();
    _shininess = 0.5f;
}

void Material::bind()
{
    TRACE();
    _ambient->bind(0);
    _ambient->setUniform(_shader, "u_ambient", 0);
    _diffuse->bind(1);
    _diffuse->setUniform(_shader, "u_diffuse", 1);
    _specular->bind(2);
    _specular->setUniform(_shader, "u_specular", 2);
    _emission->bind(3);
    _emission->setUniform(_shader, "u_emission", 3);
}

void Material::unbind()
{
    TRACE();
    GLCall(glBindTexture(GL_TEXTURE_2D, 0));
}

}
