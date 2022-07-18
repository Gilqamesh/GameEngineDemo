#ifndef TRACE_HPP
# define TRACE_HPP

# include "pch.hpp"

namespace NAMESPACE
{

/*
* singleton class
* thread-safe
*/
class Trace : public std::queue<std::string>
{
static Trace *traceInstance;
static std::mutex traceInstanceMutex;
public:
    ~Trace();
    static Trace *getInstance();
    static void add(const std::string &traceMsg);
    void printHistory(std::ostream &os);
private:
Trace();
};

# if defined(G_RELEASE)
#  define TRACE()
# elif defined (G_DEBUG)
#  define TRACE() (Trace::getInstance()->add("File: " + std::string(__FILE__) + ", function: " \
    + std::string(__FUNCTION__) + ", line: " + std::to_string(__LINE__)))
# endif

}

#endif
