#include "Simulators/QuadTreeSimulator.hpp"
#include "Applications/MacApplication.hpp"
#include "Layers/ClearWindowLayer.hpp"
#include "Layers/QuadTreeLayer.hpp"

namespace GilqEngine
{

void QuadTreeSimulator::main()
{
    unique_ptr<MacApplication> application = make_unique<MacApplication>();

    ILayer *clearWindowLayer = new ClearWindowLayer({0.5f, 0.5f, 0.5f});
    ILayer *quadTreeLayer = new QuadTreeLayer(application->getWindow());

    application->pushLayer(clearWindowLayer);
    application->pushLayer(quadTreeLayer);

    application->run();

    delete clearWindowLayer;
    delete quadTreeLayer;
}

}
