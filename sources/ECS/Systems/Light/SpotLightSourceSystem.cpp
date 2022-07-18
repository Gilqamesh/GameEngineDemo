#include "ECS/Systems/Light/SpotLightSourceSystem.hpp"
#include "ECS/Components/Light/SpotLightSourceComponent.hpp"
#include "Core/Shader.hpp"
#include "ECS/Coordinator.hpp"

namespace NAMESPACE
{

SpotLightSourceSystem::SpotLightSourceSystem(Coordinator *coordinator)
    : ISystem(coordinator)
{
    TRACE();
}

void SpotLightSourceSystem::onUpdate(float dt)
{
    TRACE();
    // precalculate angles maybe with other entities?
    (void)dt;
}

void SpotLightSourceSystem::onRender(Shader *shader)
{
    TRACE();
    unsigned int n = 0;
    for (auto &entity : entities)
    {
        SpotLightSourceComponent &spotLight = _coordinator->getComponent<SpotLightSourceComponent>(entity);
        spotLight.setShaderUniforms(shader, n++);
    }
    shader->setInt("n_of_spot_lights", (int)n);
}

void SpotLightSourceSystem::setSystemSignature()
{
    TRACE();
    ComponentSignature directionalLightSourceSystemSignature;
    directionalLightSourceSystemSignature.set(_coordinator->getComponentId<SpotLightSourceComponent>(), true);
    _coordinator->setSystemSignature<SpotLightSourceSystem>(directionalLightSourceSystemSignature);
}

void SpotLightSourceSystem::registerComponents()
{
    TRACE();
    _coordinator->registerComponent<SpotLightSourceComponent>();
}

}
