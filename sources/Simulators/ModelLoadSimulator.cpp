#include "Simulators/ModelLoadSimulator.hpp"
#include "Applications/MacApplication.hpp"
#include "Layers/ClearWindowLayer.hpp"
#include "Layers/PerspectiveCameraLayer.hpp"
#include "Layers/ModelLoadLayer.hpp"

namespace NAMESPACE
{

void ModelLoadSimulator::main()
{
    TRACE();
    try
    {
        MacApplication *app = new MacApplication();
        ClearWindowLayer *clearWindowLayer = new ClearWindowLayer();
        PerspectiveCameraLayer *perspectiveCameraLayer = new PerspectiveCameraLayer(app->getWindow());
        ModelLoadLayer *modelLoadLayer = new ModelLoadLayer(app->getWindow(), perspectiveCameraLayer->getCamera());
        app->pushLayer(clearWindowLayer);
        app->pushLayer(modelLoadLayer);
        app->pushLayer(perspectiveCameraLayer);
        app->run();
        delete app;
        delete perspectiveCameraLayer;
        delete modelLoadLayer;
        delete clearWindowLayer;
    }
    catch (std::exception &e)
    {
        LOG(e.what());
    }
}

}
