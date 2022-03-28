#include "Simulators/CameraSimulator.hpp"
#include "Applications/MacApplication.hpp"
#include "Layers/Test/FirstLayer.hpp"

namespace NAMESPACE
{

void CameraSimulator::main()
{
    try
    {
        MacApplication *app = new MacApplication();
        FirstLayer *firstLayer = new FirstLayer(app);
        app->pushLayer(firstLayer);
        app->run();
        delete app;
        delete firstLayer;
    }
    catch (std::exception &e)
    {
        LOG(e.what());
    }
}

}
