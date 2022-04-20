#include "Simulators/ECSCoordinatorSimulator.hpp"
#include "ECS/Components/PositionComponent.hpp"
#include "ECS/Components/VelocityComponent.hpp"
#include "ECS/Systems/MovementSystem.hpp"
#include "ECS/Systems/GravitySystem.hpp"
#include "ECS/Coordinator.hpp"
#include <vector>
#include <ctime>
#include "Debug/Log.hpp"

void ECSCoordinatorSimulator::main()
{
    Coordinator *coordinator = new Coordinator();
    std::vector<Entity> entities;
    coordinator->registerComponent<PositionComponent>();
    coordinator->registerComponent<VelocityComponent>();
    MovementSystem *movementSystem = coordinator->registerSystem<MovementSystem>();
    movementSystem->setSystemSignature();
    GravitySystem *gravitySystem = coordinator->registerSystem<GravitySystem>();
    gravitySystem->setSystemSignature();
    for (int i = 0; i < 14000; ++i)
    {
        entities.push_back(coordinator->createEntity());
        coordinator->addComponent<PositionComponent>(entities[i],
            { (float)(std::rand() % 100), (float)(std::rand() % 100), (float)(std::rand() % 100) });
        coordinator->addComponent<VelocityComponent>(entities[i],
            { (float)(std::rand() % 10), (float)(std::rand() % 10), (float)(std::rand() % 10) });
    }
    float dt = 1.0f;
    clock_t clock = std::clock();
    for (unsigned int i = 0; i < 60; ++i)
    {
        gravitySystem->update(dt);
        movementSystem->update(dt);
        // coordinator->print();
        // LOG("");
        // sleep(1);
    }
    std::cout << "Time taken: " << (std::clock() - clock) / (double)CLOCKS_PER_SEC << "s" << std::endl;

    delete coordinator;
}
