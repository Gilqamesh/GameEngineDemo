#include <dlfcn.h>
#include <iostream>
#include "Tree.hpp"

using namespace std;

#define LOG(x) (cout << x << endl)

typedef void(*fooFn)(void);

/**
 * 1. compile source files
 * 2. clang++ -shared -v -o <dllname> <obj files>
 *  - to create the dll, link together the object files with -shared and -v flags
 *  - TODO(david): look into what these flags do briefly
 */

int main()
{
    void *handle = dlopen("SpacePartitioning.dll", RTLD_LAZY);
    if (handle == NULL)
    {
        LOG("dlopen failed");
        exit(1);
    }
    dlerror();

    fooFn myFooFunction = (fooFn)dlsym(handle, "foo");

    if (dlerror() != NULL)
    {
        LOG("dlsym failed");
        exit(1);
    }

    myFooFunction();

    dlclose(handle);
    exit(EXIT_SUCCESS);
}
