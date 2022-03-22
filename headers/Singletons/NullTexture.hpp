#ifndef NULLTEXTURE_HPP
# define NULLTEXTURE_HPP

# include "Texture.hpp"
# include <string>
# include <queue>
# include <mutex>

/*
* singleton class
* thread-safe
*/
class NullTexture : public Texture
{
NullTexture();
static NullTexture *thisInstance;
static std::mutex thisInstanceMutex;
public:
    ~NullTexture();
    static NullTexture *getInstance();
};

#endif
