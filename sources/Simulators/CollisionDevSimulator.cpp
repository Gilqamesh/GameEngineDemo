#include "Simulators/CollisionDevSimulator.hpp"
#include "Applications/MacApplication.hpp"
#include "Layers/ClearWindowLayer.hpp"
#include "Layers/CollisionDevLayer.hpp"
#include "Log.hpp"

namespace GilqEngine
{

void CollisionDevSimulator::main()
{
    MacApplication *application = new MacApplication();

    ILayer *clearWindowLayer = new ClearWindowLayer({0.5f, 0.5f, 0.5f});
    ILayer *collisionDevLayer = new CollisionDevLayer(application->getWindow());

    application->pushLayer(clearWindowLayer);
    application->pushLayer(collisionDevLayer);

    application->run();
    delete application;
    delete collisionDevLayer;
    delete clearWindowLayer;
}

}
