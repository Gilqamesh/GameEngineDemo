#include "Log.hpp"

namespace GilqEngine
{

string getPwd(void)
{
    static bool called;
    static string exePath;
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

string getTextureDir(void)
{
    return (getPwd() + "/resources/textures/");
}

string getShaderDir(void)
{
    return (getPwd() + "/resources/shaders/");
}

string getModelDir(void)
{
    return (getPwd() + "/resources/models/");
}

}
