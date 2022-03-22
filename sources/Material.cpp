#include "./Material.hpp"
#include "Texture.hpp"
#include "Singletons/NullTexture.hpp"
#include "Debug/Trace.hpp"
#include "Debug/OpenGL.hpp"

Material::Material(IShader &shader)
    : shader(shader)
{
    ambient = NullTexture::getInstance();
    diffuse = NullTexture::getInstance();
    specular = NullTexture::getInstance();
    emission = NullTexture::getInstance();
    shininess = 0.5f;
}

void Material::bind()
{
    TRACE();
    ambient->bind(0);
    ambient->setUniform(shader);
    diffuse->bind(1);
    diffuse->setUniform(shader);
    specular->bind(2);
    specular->setUniform(shader);
    emission->bind(3);
    emission->setUniform(shader);
}

void Material::unbind()
{
    TRACE();
    GLCall(glBindTexture(GL_TEXTURE_2D, 0));
}
