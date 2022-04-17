#ifndef TEXTUREMANAGER_HPP
# define TEXTUREMANAGER_HPP

# include "Core/Texture.hpp"

namespace NAMESPACE
{

class TextureManager
{
std::unordered_map<std::string, Texture *> _textures;
public:
    ~TextureManager();
    void addTexture(Texture *texture);
    void addTexture(const std::string &texturePath, const std::string &textureName);
    
    void deleteTexture(const std::string &textureName);
    void clear();

    Texture *getTexture(const std::string &textureName);
    bool exists(const std::string &textureName) const;
};

}

#endif
