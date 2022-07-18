#include "Singletons/NullTexture.hpp"
#include "Debug/Trace.hpp"

namespace NAMESPACE
{

NullTexture *NullTexture::thisInstance = nullptr;
std::mutex NullTexture::thisInstanceMutex;

NullTexture::NullTexture()
    : Texture("C:/Users/Gilqamesh/Desktop/Projects/GameEngine/resources/textures/NullTexture.png", "NullTexture")
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
