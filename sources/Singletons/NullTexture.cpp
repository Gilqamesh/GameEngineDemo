#include "Singletons/NullTexture.hpp"

namespace NAMESPACE
{

NullTexture *NullTexture::thisInstance = nullptr;
std::mutex NullTexture::thisInstanceMutex;

NullTexture::NullTexture()
    : Texture("/Users/edavid/Desktop/Myrepo/GameEngineDemo/resources/textures/NullTexture.png", "NullTexture")
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

}
