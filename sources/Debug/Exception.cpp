#include "Debug/Exception.hpp"
#include "Debug/Trace.hpp"

namespace GilqEngine
{

Exception::Exception(const string& msg)
    : runtime_error(msg)
{
    Trace::getInstance()->printHistory(cerr);
}

Exception::~Exception() noexcept
{
    
}

}
