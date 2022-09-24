#include "Simulators/ECSCoordinatorSimulator.hpp"
#include "ECS/Components/PositionComponent3D.hpp"
#include "ECS/Components/VelocityComponent3D.hpp"
#include "ECS/Systems/DisplacementSystem.hpp"
#include "ECS/Systems/GravitySystem.hpp"
#include "ECS/Coordinator.hpp"

namespace GilqEngine
{

void ECSCoordinatorSimulator::main()
{
    TRACE();
    Coordinator *coordinator = new Coordinator();
    vector<Entity> entities;
    coordinator->registerComponent<PositionComponent3D>();
    coordinator->registerComponent<VelocityComponent3D>();
    DisplacementSystem *displacementSystem = coordinator->registerSystem<DisplacementSystem>();
    displacementSystem->setSystemSignature();
    GravitySystem *gravitySystem = coordinator->registerSystem<GravitySystem>();
    gravitySystem->setSystemSignature();
    for (int i = 0; i < 14000; ++i)
    {
        entities.push_back(coordinator->createEntity());
        coordinator->attachComponent<PositionComponent3D>(entities[i],
            { getRand(0.0f, 100.0f), getRand(0.0f, 100.0f), getRand(0.0f, 100.0f) });
        coordinator->attachComponent<VelocityComponent3D>(entities[i],
            { getRand(0.0f, 10.0f), getRand(0.0f, 10.0f), getRand(0.0f, 10.0f) });
    }
    float dt = 1.0f;
    clock_t prevClock = clock();
    for (unsigned int i = 0; i < 60; ++i)
    {
        gravitySystem->onUpdate(dt);
        displacementSystem->onUpdate(dt);
        // coordinator->print();
        // LOG("");
        // sleep(1);
    }
    cout << "Time taken: " << (clock() - prevClock) / (double)CLOCKS_PER_SEC << "s" << endl;

    delete coordinator;
}

}
