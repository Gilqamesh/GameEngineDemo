#include "Debug/Trace.hpp"

namespace GilqEngine
{

Trace *Trace::traceInstance = nullptr;
mutex Trace::traceInstanceMutex;

Trace::Trace()
{
    
}

Trace::~Trace()
{
    delete traceInstance;
}

Trace *Trace::getInstance()
{
    if (traceInstance == nullptr)
    {
        traceInstanceMutex.lock();
        traceInstance = new Trace();
        traceInstanceMutex.unlock();
    }
    return (traceInstance);
}

void Trace::add(const string &traceMsg)
{
    traceInstanceMutex.lock();
    if (traceInstance->size() > 40)
        traceInstance->pop();
    traceInstance->push(traceMsg);
    traceInstanceMutex.unlock();
}

void Trace::printHistory(ostream &os)
{
    os << "Trace History:" << endl;
    for (auto &message : c)
        os << message << endl;
}

}
