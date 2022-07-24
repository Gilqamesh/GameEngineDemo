#ifndef SPOTLIGHTSOURCECOMPONENT_HPP
# define SPOTLIGHTSOURCECOMPONENT_HPP

# include "ECS/Interfaces/ILightSource.hpp"

namespace GilqEngine
{

struct SpotLightSourceComponent : public ILightSource
{
Vector<float, 3> _position;
Vector<float, 3> _direction;
float            _innerCutOffAngle;
float            _outerCutOffAngle;
float            _attenuationFactor_constant;
float            _attenuationFactor_linear;
float            _attenuationFactor_quadratic;

void setShaderUniforms(Shader *shader, unsigned int n);
};

ostream &operator<<(ostream &os, const SpotLightSourceComponent &a);

}

#endif
