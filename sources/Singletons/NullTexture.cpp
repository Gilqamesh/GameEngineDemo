#include "Singletons/NullTexture.hpp"
#include "Debug/Trace.hpp"
#include "Log.hpp"

namespace GilqEngine
{

NullTexture *NullTexture::thisInstance = nullptr;
mutex NullTexture::thisInstanceMutex;

NullTexture::NullTexture()
    : Texture(getTextureDir() + "NullTexture.png", "NullTexture")
{
    TRACE();

}

NullTexture::~NullTexture()
{
    TRACE();
    delete thisInstance;
}

NullTexture *NullTexture::getInstance()
{
    TRACE();
    if (thisInstance == nullptr)
    {
        thisInstanceMutex.lock();
        thisInstance = new NullTexture();
        thisInstanceMutex.unlock();
    }
    return (thisInstance);
}

}
