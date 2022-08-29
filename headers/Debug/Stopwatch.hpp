#ifndef STOPWATCH_HPP
#define STOPWATCH_HPP

#include "pch.hpp"

namespace GilqEngine
{
    enum
    {
        DebugCycleCounter_Update,
        DebugCycleCounter_Render,
    };

    #define BEGIN_TIMED_BLOCK(ID) u64 StartCycleCount##ID = __rdtsc();
    #define END_TIMED_BLOCK(ID) {\
        GlobalCycleCounters[DebugCycleCounter_##ID].cycleCount += __rdtsc() - StartCycleCount##ID;\
        ++GlobalCycleCounters[DebugCycleCounter_##ID].hitCount;\
    }

    struct DebugCycleCounters
    {
        u64 cycleCount;
        u32 hitCount;
    };


    void PrintCycleCounters(void);

    extern DebugCycleCounters GlobalCycleCounters[256];

}

#endif