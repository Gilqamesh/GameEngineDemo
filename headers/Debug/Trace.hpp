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
Trace();
static Trace *traceInstance;
static std::mutex traceInstanceMutex;
public:
    ~Trace();
    static Trace *getInstance();
    static void add(const std::string &traceMsg);
    void printHistory(std::ostream &os);
};

/*
 * Bug at window->eventCallback(fn), fn gets registered as empty std::function target
 */
# define TRACE() (Trace::getInstance()->add("File: " + std::string(__FILE__) + ", \t\tfunction: " \
    + std::string(__FUNCTION__) + ", \t\tline: " + std::to_string(__LINE__)))
// # define TRACE()

}

#endif
