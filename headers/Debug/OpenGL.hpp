#ifndef OPENGL_HPP
# define OPENGL_HPP

# include "pch.hpp"

namespace NAMESPACE
{

# define ASSERT(x) if(!(x)) raise(SIGTRAP);
// # define GLCall(x) GLClearError();\
//     x;\
//     ASSERT(GLLogCall(#x, __FILE__, __LINE__))
# define GLCall(x) x

void GLClearError(void);
bool GLLogCall(const char* function, const char* file, int line);

}

#endif
