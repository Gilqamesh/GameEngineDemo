#ifndef IPARTICLETRANSFORM_HPP
# define IPARTICLETRANSFORM_HPP

# include "pch.hpp"
# include "Core/Particle.hpp"

namespace GilqEngine
{

class IParticleTransform
{
public:
    virtual ~IParticleTransform() = default;

    /**
     * @brief Applies some transform function on @inputParticle and stores the result in @outputParticle
     */
    virtual void reviveTransformFunction(const Particle& inputParticle, Particle& outputParticle) = 0;

    /**
     * @brief Upon the update stage of a particle apply some transform function to change the particle's parameters.
     */
    virtual void updateTransformFunction(float deltaTime, Particle& particle) = 0;
};

}

#endif
