#ifndef DEFAULTPARTICLEREVIVETRANSFORM_HPP
# define DEFAULTPARTICLEREVIVETRANSFORM_HPP

# include "Interfaces/IParticleTransform.hpp"

namespace GilqEngine
{

class DefaultParticleTransform : public IParticleTransform
{
public:
    virtual void reviveTransformFunction(const Particle& inputParticle, Particle& outputParticle) override;
    virtual void updateTransformFunction(float deltaTime, Particle& particle) override;
};

}

#endif
