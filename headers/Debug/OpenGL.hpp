#ifndef OPENGL_HPP
# define OPENGL_HPP

# include "pch.hpp"
# include "Trace.hpp"

namespace NAMESPACE
{

# if defined(G_RELEASE)
#  define ASSERT(x) ((void)(x))
#  define GLCall(x) GLClearError();\
    x;\
    ASSERT(GLLogCall(#x, __FILE__, __LINE__))
# elif defined(G_DEBUG)
// ?? don't comment out stuff without commenting why
// # define TERMINATE(x) {\
//     PRINT_HERE();\
//     LOG(x);\
//     exit(0);\
// }
#  define ASSERT(x) {\
    if(!(x)) {\
        Trace::getInstance()->printHistory(std::cerr);\
        assert(x);\
        raise(SIGINT);\
    }\
}
#  define GLCall(x) GLClearError();\
    x;\
    ASSERT(GLLogCall(#x, __FILE__, __LINE__))
# endif

void GLClearError(void);
bool GLLogCall(const char* function, const char* file, int line);

}

#endif
