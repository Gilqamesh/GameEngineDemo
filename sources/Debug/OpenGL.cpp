#include "Debug/OpenGL.hpp"
#include <iostream>
#include "Debug/Trace.hpp"

void GLClearError(void)
{
    while (glGetError() != GL_NO_ERROR);
}

bool GLLogCall(const char* function, const char* file, int line)
{
    while (GLenum error = glGetError())
    {
        Trace::getInstance()->printHistory(std::cout);
        std::cout << "[OpenGL Error] (0x" << std::hex << error << std::dec << "): " << function
            << " " << file << ": " << (line) << std::endl;
        return (false);
    }
    return (true);
}
