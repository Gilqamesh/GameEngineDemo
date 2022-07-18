#include "ECS/Systems/Light/PointLightSourceSystem.hpp"
#include "ECS/Components/Light/PointLightSourceComponent.hpp"
#include "Core/Shader.hpp"
#include "ECS/Coordinator.hpp"

namespace NAMESPACE
{

PointLightSourceSystem::PointLightSourceSystem(Coordinator *coordinator)
    : ISystem(coordinator)
{
    TRACE();
}

void PointLightSourceSystem::onUpdate(float dt)
{
    TRACE();
    // precalculate angles maybe with other entities?
    (void)dt;
}

void PointLightSourceSystem::onRender(Shader *shader)
{
    TRACE();
    unsigned int n = 0;
    for (auto &entity : entities)
    {
        PointLightSourceComponent &pointLight = _coordinator->getComponent<PointLightSourceComponent>(entity);
        pointLight.setShaderUniforms(shader, n++);
    }
    shader->setInt("n_of_point_lights", (int)n);
}

void PointLightSourceSystem::setSystemSignature()
{
    TRACE();
    ComponentSignature directionalLightSourceSystemSignature;
    directionalLightSourceSystemSignature.set(_coordinator->getComponentId<PointLightSourceComponent>(), true);
    _coordinator->setSystemSignature<PointLightSourceSystem>(directionalLightSourceSystemSignature);
}

void PointLightSourceSystem::registerComponents()
{
    TRACE();
    _coordinator->registerComponent<PointLightSourceComponent>();
}

}
