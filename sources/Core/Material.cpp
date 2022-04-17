#include "Core/Material.hpp"
#include "Core/Texture.hpp"
#include "Singletons/NullTexture.hpp"
#include "Debug/Trace.hpp"
#include "Debug/OpenGL.hpp"

namespace NAMESPACE
{

Material::Material()
{
    TRACE();
    _ambient = NullTexture::getInstance();
    _diffuse = NullTexture::getInstance();
    _specular = NullTexture::getInstance();
    _emission = NullTexture::getInstance();
    _shininess = 0.5f;
}

Material::Material(Shader *shader)
    : _shader(shader)
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
    _ambient->setUniform(_shader);
    _diffuse->bind(1);
    _diffuse->setUniform(_shader);
    _specular->bind(2);
    _specular->setUniform(_shader);
    _emission->bind(3);
    _emission->setUniform(_shader);
}

void Material::unbind()
{
    TRACE();
    GLCall(glBindTexture(GL_TEXTURE_2D, 0));
}

/*
Model: arrays of Meshes
Mesh: memory layout for GL
    - one material
Material:
    - 4 textures
    - 1 shader
*/

}
