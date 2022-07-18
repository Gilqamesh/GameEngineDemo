#ifndef ILIGHTSOURCE_HPP
# define ILIGHTSOURCE_HPP

# include "pch.hpp"
# include "Math/Vector.hpp"

namespace NAMESPACE
{

class Shader;

struct ILightSource
{
Vector<float, 4> _color;
float            _ambientStrength;
float            _diffuseStrength;
float            _specularStrength;

void setShaderUniforms(
    const std::string &prefix,
    Shader *shader);
};

}

#endif
