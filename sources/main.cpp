#include "Simulators/CameraSimulator.hpp"

using namespace NAMESPACE;

int main()
{
    CameraSimulator *cameraSimulator = new CameraSimulator();
    cameraSimulator->main();
    delete cameraSimulator;
}
