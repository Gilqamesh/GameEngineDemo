#include "ParticleTransforms/DefaultParticleTransform.hpp"

namespace GilqEngine
{

void DefaultParticleTransform::reviveTransformFunction(const Particle& inputParticle, Particle& outputParticle)
{
    TRACE();
    Vector<float, 2> positionFluctuation(getRand(-5.0f, 5.0f), getRand(-5.0f, 5.0f));
    Vector<float, 2> velocityMultiplier(getRand(0.9f, 1.1f), getRand(0.9f, 1.1f));
    Vector<float, 4> colorFluctuation(getRand(-0.2f, 0.2f), getRand(-0.2f, 0.2f), getRand(-0.2f, 0.2f), getRand(-0.2f, 0.2f));
    Vector<float, 2> sizeFluctuation(getRand(0.9f, 1.1f), getRand(0.9f, 1.1f));
    float lifeMultiplier = getRand(0.9f, 1.1f);

    outputParticle.position = inputParticle.position + positionFluctuation;
    outputParticle.velocity = element_wise_multiply(inputParticle.velocity, velocityMultiplier);
    outputParticle.color    = inputParticle.color + colorFluctuation;
    outputParticle.size     = element_wise_multiply(inputParticle.size, sizeFluctuation);
    outputParticle.life     = inputParticle.life * lifeMultiplier;

    // bound checking on color
    for_each(outputParticle.color.begin(), outputParticle.color.end(), [](float& f){
        if (f < 0.0f) f = 0.0f;
        if (f > 1.0f) f = 1.0f;
    });
}

void DefaultParticleTransform::updateTransformFunction(float deltaTime, Particle& particle)
{
    TRACE();
    particle.life -= deltaTime;
    if (particle.life > 0.0f)
    {
        particle.position += particle.velocity * deltaTime;
        particle.color[3] -= deltaTime * 2.5f;
    }
}

}
