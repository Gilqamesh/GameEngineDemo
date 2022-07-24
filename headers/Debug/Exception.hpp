#ifndef EXCEPTION
# define EXCEPTION

# include <string>
# include <exception>

namespace GilqEngine
{

class Exception : public runtime_error
{
public:
    Exception(const string& msg);
    ~Exception() noexcept;
};

}

#endif
