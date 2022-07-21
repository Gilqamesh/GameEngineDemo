#include "ECS/Systems/Light/DirectionalLightSourceSystem.hpp"
#include "ECS/Components/Light/DirectionalLightSourceComponent.hpp"
#include "Core/Shader.hpp"
#include "ECS/Coordinator.hpp"
#include "Debug/Trace.hpp"

namespace GilqEngine
{

DirectionalLightSourceSystem::DirectionalLightSourceSystem(Coordinator *coordinator)
    : ISystem(coordinator)
{
    TRACE();
}

void DirectionalLightSourceSystem::onUpdate(float dt)
{
    TRACE();
    // precalculate angles maybe with other entities?
    (void)dt;
}

void DirectionalLightSourceSystem::onRender(Shader *shader)
{
    TRACE();
    unsigned int n = 0;
    for (auto &entity : entities)
    {
        DirectionalLightSourceComponent &directionalLight = _coordinator->getComponent<DirectionalLightSourceComponent>(entity);
        directionalLight.setShaderUniforms(shader, n++);
    }
    shader->setInt("n_of_directional_lights", n);
}

void DirectionalLightSourceSystem::setSystemSignature()
{
    TRACE();
    ComponentSignature directionalLightSourceSystemSignature;
    directionalLightSourceSystemSignature.set(_coordinator->getComponentId<DirectionalLightSourceComponent>(), true);
    _coordinator->setSystemSignature<DirectionalLightSourceSystem>(directionalLightSourceSystemSignature);
}

void DirectionalLightSourceSystem::registerComponents()
{
    TRACE();
    _coordinator->registerComponent<DirectionalLightSourceComponent>();
}

}
