#include "Simulators/TriangleSimulator.hpp"
#include "Applications/MacApplication.hpp"
#include "Layers/ClearWindowLayer.hpp"
#include "Layers/PerspectiveCameraLayer.hpp"
#include "Layers/TriangleMeshesLayer.hpp"

namespace NAMESPACE
{

void TriangleSimulator::main()
{
    try
    {
        MacApplication *app = new MacApplication();
        ClearWindowLayer *clearWindowLayer = new ClearWindowLayer();
        TriangleMeshesLayer *triangleMeshesLayer = new TriangleMeshesLayer();
        // PerspectiveCameraLayer *perspectiveCameraLayer = new PerspectiveCameraLayer(app);
        app->pushLayer(clearWindowLayer);
        app->pushLayer(triangleMeshesLayer);
        // app->pushLayer(perspectiveCameraLayer);
        app->run();
        delete app;
        // delete perspectiveCameraLayer;
        delete triangleMeshesLayer;
        delete clearWindowLayer;
    }
    catch (std::exception &e)
    {
        LOG(e.what());
    }
}

}
