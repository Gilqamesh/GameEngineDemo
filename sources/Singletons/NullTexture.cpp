#include "Singletons/NullTexture.hpp"

NullTexture *NullTexture::thisInstance = nullptr;
std::mutex NullTexture::thisInstanceMutex;

NullTexture::NullTexture()
    : Texture("./resources/textures/NullTexture.png")
{

}

NullTexture::~NullTexture()
{
    delete thisInstance;
}

NullTexture *NullTexture::getInstance()
{
    if (thisInstance == nullptr)
    {
        thisInstanceMutex.lock();
        thisInstance = new NullTexture();
        thisInstanceMutex.unlock();
    }
    return (thisInstance);
}
