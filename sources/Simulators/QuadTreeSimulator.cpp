#include "Simulators/QuadTreeSimulator.hpp"
#include "Applications/MacApplication.hpp"
#include "Layers/ClearWindowLayer.hpp"
#include "Layers/QuadTreeLayer.hpp"
#include "Log.hpp"

namespace GilqEngine
{

void QuadTreeSimulator::main()
{
    MacApplication *application = new MacApplication();

    ILayer *clearWindowLayer = new ClearWindowLayer({0.5f, 0.5f, 0.5f});
    ILayer *quadTreeLayer = new QuadTreeLayer(application->getWindow());

    application->pushLayer(clearWindowLayer);
    application->pushLayer(quadTreeLayer);

    application->run();
    delete application;
    delete quadTreeLayer;
    delete clearWindowLayer;
}

}
