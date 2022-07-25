#ifndef TEXTUREMANAGER_HPP
# define TEXTUREMANAGER_HPP

# include "Core/Texture.hpp"

namespace GilqEngine
{

class TextureManager
{
unordered_map<string, Texture *> _textures;
public:
    ~TextureManager();
    void addTexture(Texture *texture);
    void addTexture(const string &texturePath, const string &textureName);
    
    void deleteTexture(const string &textureName);
    void clear();

    /*
     * Shouldn't need this, add texture manipulator methods
     */
    Texture *getTexture(const string &textureName);
    bool exists(const string &textureName) const;
};

}

#endif
