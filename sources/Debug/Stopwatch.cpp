#include "Debug/Stopwatch.hpp"
#include "Log.hpp"

namespace GilqEngine
{
    DebugCycleCounters GlobalCycleCounters[256] = {};

    void PrintCycleCounters(void)
    {
        LOG("DEBUG CYCLE COUNTS:");
        for(u32 counterIndex = 0;
            counterIndex < ArrayCount(GlobalCycleCounters);
            ++counterIndex)
        {
            DebugCycleCounters *Counter = GlobalCycleCounters + counterIndex;

            if(Counter->hitCount)
            {
                LOG(counterIndex << ": " << Counter->cycleCount << "cy "
                    << Counter->hitCount << "h " << Counter->cycleCount / Counter->hitCount << "cy/h");
                Counter->hitCount = 0;
                Counter->cycleCount = 0;
            }
        }
    }
}
