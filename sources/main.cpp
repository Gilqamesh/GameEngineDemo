#include "Simulators/BytecodeSimulator.hpp"
#include "Debug/Log.hpp"
#include "Math/Vector.hpp"

using namespace NAMESPACE;

int main()
{
    TRACE();
    std::srand(42);

    try
    {
        std::unique_ptr<BytecodeSimulator> simulator = std::make_unique<BytecodeSimulator>();
        simulator->main(); 
    }
    catch (const std::exception& e)
    {
        LOG(e.what());
    }
}
