#include "Log.hpp"

namespace GilqEngine
{

std::string getPwd(void)
{
    static bool called;
    static std::string exePath;
    if (called == false)
    {
        called = true;
# if defined(WINDOWS)
        char buf[MAX_PATH];
        if (GetCurrentDirectory(MAX_PATH, buf) == 0)
            TERMINATE("Something went wrong in 'GetCurrentDirectory'");
        exePath = buf;
        exePath = exePath.substr(0, exePath.find_last_of("\\"));
# elif defined (LINUX)
        char buf[PATH_MAX];
        readlink("/proc/self/exe", buf, PATH_MAX);
        if (getwd(buf) == NULL)
            TERMINATE("Something went wrong in 'getcwd'");
        exePath = buf;
        exePath = exePath.substr(0, exePath.find_last_of("/"));
# endif
    }
    return (exePath);
}

std::string getTextureDir(void)
{
    return (getPwd() + "/resources/textures/");
}

std::string getShaderDir(void)
{
    return (getPwd() + "/resources/shaders/");
}

std::string getModelDir(void)
{
    return (getPwd() + "/resources/models/");
}

}
