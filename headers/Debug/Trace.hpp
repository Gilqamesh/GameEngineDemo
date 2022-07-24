#ifndef TRACE_HPP
# define TRACE_HPP

# include <string>
# include <iostream>
# include <queue>

namespace GilqEngine
{

using namespace std;

/*
* singleton class
* thread-safe
*/
class Trace : public queue<string>
{
static Trace *traceInstance;
static mutex traceInstanceMutex;
public:
    ~Trace();
    static Trace *getInstance();
    static void add(const string &traceMsg);
    void printHistory(ostream &os);
private:
Trace();
};

# if defined(G_RELEASE)
#  define TRACE()
# elif defined (G_DEBUG)
#  define TRACE() (Trace::getInstance()->add("File: " + string(__FILE__) + ", function: " \
    + string(__FUNCTION__) + ", line: " + to_string(__LINE__)))
# endif

}

#endif
