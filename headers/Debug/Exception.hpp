#ifndef EXCEPTION
# define EXCEPTION

# include <string>
# include <exception>

namespace GilqEngine
{

class Exception : public std::runtime_error
{
public:
    Exception(const std::string& msg);
    ~Exception() noexcept;
};

}

#endif
