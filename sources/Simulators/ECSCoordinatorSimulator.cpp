#include "Simulators/ECSCoordinatorSimulator.hpp"
#include "ECS/Components/PositionComponent.hpp"
#include "ECS/Components/VelocityComponent.hpp"
#include "ECS/Systems/DisplacementSystem.hpp"
#include "ECS/Systems/GravitySystem.hpp"
#include "ECS/Coordinator.hpp"
#include "Debug/Trace.hpp"
#include <vector>
#include <ctime>
#include "Debug/Log.hpp"

namespace NAMESPACE
{

void ECSCoordinatorSimulator::main()
{
    TRACE();
    Coordinator *coordinator = new Coordinator();
    std::vector<Entity> entities;
    coordinator->registerComponent<PositionComponent>();
    coordinator->registerComponent<VelocityComponent>();
    DisplacementSystem *displacementSystem = coordinator->registerSystem<DisplacementSystem>();
    displacementSystem->setSystemSignature();
    GravitySystem *gravitySystem = coordinator->registerSystem<GravitySystem>();
    gravitySystem->setSystemSignature();
    for (int i = 0; i < 14000; ++i)
    {
        entities.push_back(coordinator->createEntity());
        coordinator->attachComponent<PositionComponent>(entities[i],
            { (float)(std::rand() % 100), (float)(std::rand() % 100), (float)(std::rand() % 100) });
        coordinator->attachComponent<VelocityComponent>(entities[i],
            { (float)(std::rand() % 10), (float)(std::rand() % 10), (float)(std::rand() % 10) });
    }
    float dt = 1.0f;
    clock_t clock = std::clock();
    for (unsigned int i = 0; i < 60; ++i)
    {
        gravitySystem->onUpdate(dt);
        displacementSystem->onUpdate(dt);
        // coordinator->print();
        // LOG("");
        // sleep(1);
    }
    std::cout << "Time taken: " << (std::clock() - clock) / (double)CLOCKS_PER_SEC << "s" << std::endl;

    delete coordinator;
}

}
