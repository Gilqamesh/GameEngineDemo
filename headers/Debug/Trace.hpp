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

# define TRACE() (Trace::add("File: " + std::string(__FILE__).substr(std::string(__FILE__).find_last_of("/") + 1) + ", \t\tfunction: " \
    + std::string(__FUNCTION__) + ", \t\tline: " + std::to_string(__LINE__)))

}

#endif
