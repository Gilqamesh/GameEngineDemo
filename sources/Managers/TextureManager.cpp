#include "Managers/TextureManager.hpp"
#include "Debug/Trace.hpp"

namespace GilqEngine
{

TextureManager::~TextureManager()
{
    TRACE();
    clear();
}

void TextureManager::addTexture(Texture *texture)
{
    TRACE();
    if (exists(texture->getName()) == true)
        throw Exception("Texture " + texture->getName() + " already exists in the TextureManager");

    _textures[texture->getName()] = texture;
}

void TextureManager::addTexture(const string &texturePath, const string &textureName)
{
    TRACE();
    if (exists(textureName) == true)
        throw Exception("Texture " + textureName + " already exists in the TextureManager");

    _textures[textureName] = new Texture(texturePath, textureName);
}

void TextureManager::deleteTexture(const string &textureName)
{
    TRACE();
    if (exists(textureName) == false)
        throw Exception("Texture " + textureName + " does not exist in the TextureManager");

    delete _textures[textureName];
    _textures.erase(textureName);
}

void TextureManager::clear()
{
    TRACE();
    for (auto texture : _textures)
        delete texture.second;

    _textures.clear();
}

Texture *TextureManager::getTexture(const string &textureName)
{
    TRACE();
    if (exists(textureName) == false)
        throw Exception("Texture " + textureName + " does not exist in the TextureManager");

    return (_textures[textureName]);
}

bool TextureManager::exists(const string &textureName) const
{
    TRACE();
    return (_textures.count(textureName));
}


}
