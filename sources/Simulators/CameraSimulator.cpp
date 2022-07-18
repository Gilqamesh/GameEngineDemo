#include "Simulators/CameraSimulator.hpp"
#include "Applications/MacApplication.hpp"
#include "Layers/PerspectiveCameraLayer.hpp"

namespace NAMESPACE
{

void CameraSimulator::main()
{
    TRACE();
    try
    {
        MacApplication *app = new MacApplication();
        PerspectiveCameraLayer *perspectiveCameraLayer = new PerspectiveCameraLayer(app->getWindow());
        app->pushLayer(perspectiveCameraLayer);
        app->run();
        delete app;
        delete perspectiveCameraLayer;
    }
    catch (std::exception &e)
    {
        LOG(e.what());
    }
}

}
