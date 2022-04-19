#include "Core/Texture.hpp"
#include "Debug/OpenGL.hpp"
#include "Debug/Trace.hpp"
#include "Vendor/stb_image/stb_image.h"
#include "Core/Shader.hpp"

namespace NAMESPACE
{

Texture::Texture(const std::string &texturePath, const std::string &textureName)
    : _name(textureName)
{
    TRACE();
	unsigned char* buffer;

	stbi_set_flip_vertically_on_load(1);
    int width, height, bpp; /* currently we dont need the object to hold these variables */
	buffer = stbi_load(texturePath.c_str(), &width, &height, &bpp, 4);

	GLCall(glGenTextures(1, &GL_ID));
	GLCall(glBindTexture(GL_TEXTURE_2D, GL_ID));

	// Need to specify these 4 parameters
	GLCall(glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST_MIPMAP_NEAREST));
	GLCall(glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR));
	GLCall(glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE));
	GLCall(glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE));
	GLCall(glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA8, width, height, 0, GL_RGBA, GL_UNSIGNED_BYTE, buffer));

	// Generate mipmap
	GLCall(glGenerateMipmap(GL_TEXTURE_2D));

	GLCall(glBindTexture(GL_TEXTURE_2D, 0));

    ASSERT(buffer);
    stbi_image_free(buffer);
}

Texture::~Texture()
{
    TRACE();
    ASSERT(GL_ID);
    GLCall(glDeleteTextures(1, &GL_ID));
}

Texture::Texture(Texture &&other)
    : GL_ID(other.GL_ID), _name(other._name)
{
    TRACE();
    other.GL_ID = 0;
}

Texture &Texture::operator=(Texture &&other)
{
    TRACE();
    if (this != &other)
    {
        GL_ID = other.GL_ID;
        _name = other._name;
        other.GL_ID = 0;
    }
    return (*this);
}

void Texture::bind(GLint slot)
{
    TRACE();
	GLCall(glActiveTexture(GL_TEXTURE0 + slot));
	GLCall(glBindTexture(GL_TEXTURE_2D, GL_ID));
}

void Texture::unbind()
{
    TRACE();
	GLCall(glBindTexture(GL_TEXTURE_2D, 0));
}

void Texture::setUniform(Shader *shader, const std::string &name, GLint slot)
{
    TRACE();
    bind(slot);
    shader->setInt(name, slot);
}

}
