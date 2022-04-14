#include "Simulators/CameraSimulator.hpp"
#include "Simulators/ECSCoordinatorSimulator.hpp"
#include "Debug/Log.hpp"

using namespace NAMESPACE;

int main()
{
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

    try
    {
        ECSCoordinatorSimulator *ecsCoordinatorSimulator = new ECSCoordinatorSimulator();
        ecsCoordinatorSimulator->main();
        delete ecsCoordinatorSimulator;
    }
    catch (std::exception &e)
    {
        LOG_E(e.what());
    }
}
