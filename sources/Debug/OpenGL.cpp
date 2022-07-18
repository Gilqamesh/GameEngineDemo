#include "Debug/OpenGL.hpp"
#include "Debug/Trace.hpp"

namespace NAMESPACE
{

void GLClearError(void)
{
    while (glGetError() != GL_NO_ERROR);
}

bool GLLogCall(const char* function, const char* file, int line)
{
    while (GLenum error = glGetError())
    {
        Trace::getInstance()->printHistory(std::cerr);
        LOG_E("[OpenGL Error] (0x" << std::hex << error << std::dec << "): " << function << " " << file << ": " << (line));
        return (false);
    }
    return (true);
}

}
