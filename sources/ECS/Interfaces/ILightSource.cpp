#include "ECS/Interfaces/ILightSource.hpp"
#include "Core/Shader.hpp"
#include "Debug/Trace.hpp"

namespace GilqEngine
{

void ILightSource::setShaderUniforms(const std::string &prefix, Shader *shader)
{
    TRACE();
    shader->setFloat4(prefix + "color", _color);
    shader->setFloat(prefix + "ambientStrength", _ambientStrength);
    shader->setFloat(prefix + "diffuseStrength", _diffuseStrength);
    shader->setFloat(prefix + "specularStrength", _specularStrength);
}

}
