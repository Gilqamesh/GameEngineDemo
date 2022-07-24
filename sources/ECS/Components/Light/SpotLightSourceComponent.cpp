#include "ECS/Components/Light/SpotLightSourceComponent.hpp"
#include "Debug/Trace.hpp"
#include "Core/Shader.hpp"

namespace GilqEngine
{

void SpotLightSourceComponent::setShaderUniforms(Shader *shader, unsigned int n)
{
    TRACE();
    string prefix("spot_light[" + to_string(n) + "].");
    ILightSource::setShaderUniforms(prefix, shader);
    shader->setFloat3(prefix + "position", _position);
    shader->setFloat3(prefix + "direction", _direction);
    shader->setFloat(prefix + "innerCutOffAngle", _innerCutOffAngle);
    shader->setFloat(prefix + "outerCutOffAngle", _outerCutOffAngle);
    shader->setFloat(prefix + "attenuation_constant", _attenuationFactor_constant);
    shader->setFloat(prefix + "attenuation_linear", _attenuationFactor_linear);
    shader->setFloat(prefix + "attenuation_quadratic", _attenuationFactor_quadratic);
}

ostream &operator<<(ostream &os, const SpotLightSourceComponent &a)
{
    TRACE();
    os << "{color: " << a._color << ", ambient: " << a._ambientStrength << ", diffuse: "
        << a._diffuseStrength << ", specular: " << a._specularStrength << ", position: " << a._position
        << ", direction: " << a._direction << ", inner/outer cutoff angle: " << a._innerCutOffAngle << " "
        << a._outerCutOffAngle << ", attenuation: " << a._attenuationFactor_constant << " " << a._attenuationFactor_linear
        << " " << a._attenuationFactor_quadratic << "}";
    return (os);
}

}
