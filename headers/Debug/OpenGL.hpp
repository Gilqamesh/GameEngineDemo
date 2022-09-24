#ifndef OPENGL_HPP
# define OPENGL_HPP

# include "Trace.hpp"

namespace GilqEngine
{

# if defined(G_RELEASE)
#  define ASSERT(x)
#  define GLCall(x) x
# elif defined(G_DEBUG)
#  define ASSERT(x) {\
    if(!(x)) {\
        Trace::getInstance()->printHistory(cerr);\
        assert(x);\
        raise(SIGINT);\
    }\
}
#  define GLCall(x)\
    GLClearError();\
    x;\
    ASSERT(GLLogCall(#x, __FILE__, __LINE__))
# endif

void GLClearError(void);
bool GLLogCall(const char* function, const char* file, int line);

}

#endif
