#include "Simulators/CameraSimulator.hpp"
#include "Simulators/ECSCoordinatorSimulator.hpp"
#include "Simulators/TriangleSimulator.hpp"
#include "Debug/Log.hpp"

using namespace NAMESPACE;

int main()
{
    std::srand(42);
    // try
    // {
    //     CameraSimulator *cameraSimulator = new CameraSimulator();
    //     cameraSimulator->main();
    //     delete cameraSimulator;
    // }
    // catch (std::exception &e)
    // {
    //     LOG(e.what());
    // }

    // try
    // {
    //     ECSCoordinatorSimulator *ecsCoordinatorSimulator = new ECSCoordinatorSimulator();
    //     ecsCoordinatorSimulator->main();
    //     delete ecsCoordinatorSimulator;
    // }
    // catch (std::exception &e)
    // {
    //     LOG_E(e.what());
    // }

    try
    {
        TriangleSimulator *triangleSimulator = new TriangleSimulator();
        triangleSimulator->main();
        delete triangleSimulator;
    }
    catch (std::exception &e)
    {
        LOG_E(e.what());
    }
}
