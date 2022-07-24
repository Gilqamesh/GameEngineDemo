#include "ECS/Components/Light/DirectionalLightSourceComponent.hpp"
#include "Debug/Trace.hpp"
#include "Core/Shader.hpp"

namespace GilqEngine
{

void DirectionalLightSourceComponent::setShaderUniforms(Shader *shader, unsigned int n)
{
    TRACE();
    string prefix("directional_light[" + to_string(n) + "].");
    ILightSource::setShaderUniforms(prefix, shader);
    shader->setFloat3(prefix + "direction", _direction);
}

ostream &operator<<(ostream &os, const DirectionalLightSourceComponent &a)
{
    TRACE();
    os << "{color: " << a._color << ", ambient: " << a._ambientStrength << ", diffuse: "
        << a._diffuseStrength << ", specular: " << a._specularStrength << ", direction: " << a._direction << "}";
    return (os);
}

}
