#include "Debug/Trace.hpp"

namespace NAMESPACE
{

Trace *Trace::traceInstance = nullptr;
std::mutex Trace::traceInstanceMutex;

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

void Trace::add(const std::string &traceMsg)
{
    traceInstanceMutex.lock();
    if (traceInstance->size() > 20)
        traceInstance->pop();
    traceInstance->push(traceMsg);
    traceInstanceMutex.unlock();
}

void Trace::printHistory(std::ostream &os)
{
    os << "Trace History:" << std::endl;
    for (auto message : c)
        os << message << std::endl;
}

}
