#ifndef DIRECTIONALLIGHTSOURCECOMPONENT_HPP
# define DIRECTIONALLIGHTSOURCECOMPONENT_HPP

# include "ECS/Interfaces/ILightSource.hpp"

namespace NAMESPACE
{

struct DirectionalLightSourceComponent : public ILightSource
{
Vector<float, 3> _direction;

void setShaderUniforms(Shader *shader, unsigned int n);
};

std::ostream &operator<<(std::ostream &os, const DirectionalLightSourceComponent &a);

}

#endif
