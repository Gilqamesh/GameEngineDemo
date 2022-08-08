#ifndef STOPWATCH_HPP
# define STOPWATCH_HPP

# include "pch.hpp"

namespace GilqEngine
{

class Stopwatch
{
array<time_t, UINT8_MAX> _currentTimes;
array<time_t, UINT8_MAX> _accumulatedTimes;
uint8 _current;
public:
    Stopwatch();

    void set();
    void reset();
    void clear();

    void print();
};

}

#endif
