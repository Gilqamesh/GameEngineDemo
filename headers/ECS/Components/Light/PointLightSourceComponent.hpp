#ifndef POINTLIGHTSOURCECOMPONENT_HPP
# define POINTLIGHTSOURCECOMPONENT_HPP

# include "ECS/Interfaces/ILightSource.hpp"

namespace GilqEngine
{

struct PointLightSourceComponent : public ILightSource
{
Vector<float, 3> _position;
float            _attenuationFactor_constant;
float            _attenuationFactor_linear;
float            _attenuationFactor_quadratic;

void setShaderUniforms(Shader *shader, unsigned int n);
};

std::ostream &operator<<(std::ostream &os, const PointLightSourceComponent &a);

}

#endif
