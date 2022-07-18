#ifndef EXCEPTION
# define EXCEPTION

# include "pch.hpp"

namespace NAMESPACE
{

class Exception : public runtime_error
{
public:
    Exception(const string& msg);
    ~Exception() noexcept;
};

}

#endif
