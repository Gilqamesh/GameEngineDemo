#ifndef EXPLOSIONPARTICLETRANSFORM_HPP
# define EXPLOSIONPARTICLETRANSFORM_HPP

# include "Interfaces/IParticleTransform.hpp"

namespace GilqEngine
{

class ExplosionParticleTransform : public IParticleTransform
{
public:
    virtual void reviveTransformFunction(const Particle& inputParticle, Particle& outputParticle) override;
    virtual void updateTransformFunction(float deltaTime, Particle& particle) override;
};

}

#endif
