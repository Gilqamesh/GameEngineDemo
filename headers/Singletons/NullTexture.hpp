#ifndef NULLTEXTURE_HPP
# define NULLTEXTURE_HPP

# include "pch.hpp"
# include "Core/Texture.hpp"


namespace GilqEngine
{

/*
* singleton class
* thread-safe
*/
class NullTexture : public Texture
{
NullTexture();
static NullTexture *thisInstance;
static mutex thisInstanceMutex;
public:
    ~NullTexture();
    static NullTexture *getInstance();
};

}

#endif
