#ifndef LOG_HPP
# define LOG_HPP

# include "pch.hpp"

namespace GilqEngine
{

# define LOG(x) (std::cout << x << std::endl)
# define LOG_E(x) (std::cerr << x << std::endl)
# define PRINT_HERE() (LOG(__FILE__ << " " << __LINE__))
# define TERMINATE(x) {\
    PRINT_HERE();\
    LOG(x);\
    exit(0);\
}

/**
 * On Linux systems this only works if the exe is started from the /build dir
 */
std::string getPwd(void);
std::string getTextureDir(void);
std::string getShaderDir(void);
std::string getModelDir(void);

}

#endif
