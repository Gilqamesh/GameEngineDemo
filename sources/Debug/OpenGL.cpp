#include "Debug/OpenGL.hpp"
#include "Debug/Trace.hpp"

namespace GilqEngine
{

void GLClearError(void)
{
    while (glGetError() != GL_NO_ERROR);
}

bool GLLogCall(const char* function, const char* file, int line)
{
    while (GLenum error = glGetError())
    {
        LOG_E("[OpenGL Error] (0x" << hex << error << dec << "): " << function << " " << file << ": " << (line));
        return (false);
    }
    return (true);
}

}
