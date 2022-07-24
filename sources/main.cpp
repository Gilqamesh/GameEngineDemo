#include "Simulators/BytecodeSimulator.hpp"
#include "Simulators/QuadTreeSimulator.hpp"
#include "Log.hpp"

using namespace GilqEngine;

int main(void)
{
    TRACE();
    srand(42);

    try
    {
        // make_unique<BytecodeSimulator>();
        unique_ptr<QuadTreeSimulator> simulator = make_unique<QuadTreeSimulator>();
        simulator->main();
    }
    catch (const exception& e)
    {
        LOG(e.what());
    }
}
