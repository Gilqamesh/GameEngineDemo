#include "Debug/Stopwatch.hpp"
#include "Log.hpp"

namespace GilqEngine
{

Stopwatch::Stopwatch()
    : _currentTimes{},
      _accumulatedTimes{},
      _current(0)
{

}

void Stopwatch::set()
{
    _currentTimes[_current] = clock();
    if (_current > 0)
    {
        _accumulatedTimes[_current - 1] += _currentTimes[_current] - _currentTimes[_current - 1];
    }
    ++_current;
}

void Stopwatch::reset()
{
    _current = 0;
}

void Stopwatch::clear()
{
    for (auto &time : _currentTimes)
    {
        time = 0;
    }
    for (auto &time : _accumulatedTimes)
    {
        time = 0;
    }
    reset();
}

void Stopwatch::print()
{
    if (_current == 0)
        return ;
    for (uint8 i = 0; i < _current - 1; ++i)
    {
        LOG(static_cast<int>(i) << " -> " << _accumulatedTimes[i] / static_cast<float>(CLOCKS_PER_SEC) << "s");
    }
}

}
