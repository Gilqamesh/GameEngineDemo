#include "ECS/Components/Light/DirectionalLightSourceComponent.hpp"
#include "Debug/Trace.hpp"
#include "Core/Shader.hpp"

namespace NAMESPACE
{

void DirectionalLightSourceComponent::setShaderUniforms(Shader *shader, unsigned int n)
{
    TRACE();
    std::string prefix("directional_light[" + std::to_string(n) + "].");
    ILightSource::setShaderUniforms(prefix, shader);
    shader->setFloat3(prefix + "direction", _direction);
}

std::ostream &operator<<(std::ostream &os, const DirectionalLightSourceComponent &a)
{
    TRACE();
    os << "{color: " << a._color << ", ambient: " << a._ambientStrength << ", diffuse: "
        << a._diffuseStrength << ", specular: " << a._specularStrength << ", direction: " << a._direction << "}";
    return (os);
}

}
