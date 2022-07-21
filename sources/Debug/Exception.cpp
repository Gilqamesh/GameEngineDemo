#include "Debug/Exception.hpp"

namespace GilqEngine
{

Exception::Exception(const string& msg)
    : runtime_error(msg)
{

}

Exception::~Exception() noexcept
{
    
}

}
