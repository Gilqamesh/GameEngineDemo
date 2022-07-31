#include "Simulators/BytecodeSimulator.hpp"
#include "Simulators/QuadTreeSimulator.hpp"
#include "Simulators/CollisionDevSimulator.hpp"
#include "Log.hpp"

using namespace GilqEngine;

int main(void)
{
    TRACE();
    srand(42);

    try
    {
        // make_unique<BytecodeSimulator>();
        unique_ptr<ISimulator> simulator = make_unique<QuadTreeSimulator>();
        // unique_ptr<ISimulator> simulator = make_unique<CollisionDevSimulator>();
        simulator->main();
    }
    catch (const Exception& e)
    {
        LOG(e.what());
    }
    catch (const exception& e)
    {
        LOG(e.what());
        LOG("The type of this exception should be Exception");
    }
}
