#include "Debug/Exception.hpp"
#include "Debug/Log.hpp"

namespace NAMESPACE
{

Exception::Exception(const string& msg)
    : runtime_error(msg)
{

}

Exception::~Exception() noexcept
{
    
}

}
