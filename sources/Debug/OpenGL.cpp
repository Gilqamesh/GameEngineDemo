#include "Debug/OpenGL.hpp"
#include "Debug/Trace.hpp"

namespace NAMESPACE
{

void GLClearError(void)
{
    TRACE();
    while (glGetError() != GL_NO_ERROR);
}

bool GLLogCall(const char* function, const char* file, int line)
{
    TRACE();
    while (GLenum error = glGetError())
    {
        Trace::getInstance()->printHistory(std::cout);
        std::cout << "[OpenGL Error] (0x" << std::hex << error << std::dec << "): " << function
            << " " << file << ": " << (line) << std::endl;
        return (false);
    }
    return (true);
}

}
