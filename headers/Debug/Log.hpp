#ifndef LOG_HPP
# define LOG_HPP

# include <iostream>

# define LOG(x) (std::cout << x << std::endl)
# define PRINT_HERE() (LOG(__FILE__ << " " << __LINE__))
# define TERMINATE(x) {\
    PRINT_HERE();\
    LOG(x);\
    exit(0);\
}

#endif
