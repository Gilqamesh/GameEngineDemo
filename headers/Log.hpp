#ifndef LOG_HPP
# define LOG_HPP

# include <iostream>

namespace GilqEngine
{

using namespace std;

# define LOG(x) (cout << x << endl)
# define LOG_E(x) (cerr << x << endl)
# define PRINT_HERE() (LOG(__FILE__ << " " << __LINE__))
# define TERMINATE(x) {\
    PRINT_HERE();\
    LOG(x);\
    exit(0);\
}
# define LINE() (LOG(__FILE__ << " " << __LINE__))

/**
 * On Linux systems this only works if the exe is started from the /build dir
 */
string getPwd(void);
string getTextureDir(void);
string getShaderDir(void);
string getModelDir(void);

}

#endif
