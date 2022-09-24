#ifndef DIRECTIONALLIGHTSOURCECOMPONENT_HPP
# define DIRECTIONALLIGHTSOURCECOMPONENT_HPP

# include "ECS/Interfaces/ILightSource.hpp"

namespace GilqEngine
{

struct DirectionalLightSourceComponent : public ILightSource
{
Vector<float, 3> _direction;

void setShaderUniforms(Shader *shader, unsigned int n);
};

ostream &operator<<(ostream &os, const DirectionalLightSourceComponent &a);

}

#endif
