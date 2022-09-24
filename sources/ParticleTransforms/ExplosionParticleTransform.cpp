#include "ParticleTransforms/ExplosionParticleTransform.hpp"

namespace GilqEngine
{

void ExplosionParticleTransform::reviveTransformFunction(const Particle& inputParticle, Particle& outputParticle)
{
    Vector<float, 4> colorFluctuation(getRand(-0.2f, 0.2f), getRand(-0.2f, 0.2f), getRand(-0.2f, 0.2f), 0.0f);
    Vector<float, 2> sizeFluctuation(getRand(0.5f, 1.5f), getRand(0.5f, 1.5f));
    float lifeMultiplier = getRand(0.8f, 1.2f);

    outputParticle.position = inputParticle.position;
    Vector<float, 2> velocityDirection(getRand(-1.0f, 1.0f), getRand(-1.0f, 1.0f));
    float velocityMagnitude = 300.0f;
    // outputParticle.velocity = normalize(velocityDirection) * velocityMagnitude;
    outputParticle.velocity = inputParticle.velocity;
    outputParticle.color    = inputParticle.color + colorFluctuation;
    outputParticle.size     = element_wise_multiply(inputParticle.size, sizeFluctuation);
    outputParticle.life     = inputParticle.life * lifeMultiplier;

    // bound checking on color
    for_each(outputParticle.color.begin(), outputParticle.color.end(), [](float& f){
        if (f < 0.0f) f = 0.0f;
        if (f > 1.0f) f = 1.0f;
    });
}

void ExplosionParticleTransform::updateTransformFunction(float deltaTime, Particle& particle)
{
    float lifeTransienceMultiplier = 0.2f;
    particle.life -= deltaTime * lifeTransienceMultiplier;
    if (particle.life > 0.0f)
    {
        particle.position += particle.velocity * deltaTime;
        particle.velocity *= 0.98f;
        particle.size *= 0.98f;
        float colorFluctuation = 0.01f;
        particle.color[0] = max(1.0f, particle.color[0] * (1 + colorFluctuation));
        particle.color[1] *= 1 - colorFluctuation;
        particle.color[3] -= deltaTime * lifeTransienceMultiplier;
    }
}

}
