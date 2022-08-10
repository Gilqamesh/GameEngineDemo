#include "ParticleTransforms/ExplosionParticleTransform.hpp"

namespace GilqEngine
{

void ExplosionParticleTransform::reviveTransformFunction(const Particle& inputParticle, Particle& outputParticle)
{
    TRACE();
    Vector<float, 4> colorFluctuation(getRand(-0.2f, 0.2f), getRand(-0.2f, 0.2f), getRand(-0.2f, 0.2f), 0.0f);
    Vector<float, 2> sizeFluctuation(getRand(0.7f, 1.3f), getRand(0.7f, 1.3f));
    float lifeMultiplier = getRand(0.8f, 1.2f);

    outputParticle.position = inputParticle.position;
    outputParticle.velocity = normalize(Vector<float, 2>(getRand(-1.0f, 1.0f), getRand(-1.0f, 1.0f))) * 300.0f;
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
    TRACE();
    float lifeTransienceMultiplier = 0.25f;
    particle.life -= deltaTime * lifeTransienceMultiplier;
    if (particle.life > 0.0f)
    {
        particle.position += particle.velocity * deltaTime;
        particle.velocity *= 0.99;
        particle.size *= 0.97;
        particle.color[0] = max(1.0f, particle.color[0] * 1.01f);
        particle.color[1] *= 0.99f;
        particle.color[3] -= deltaTime * lifeTransienceMultiplier;
    }
}

}
