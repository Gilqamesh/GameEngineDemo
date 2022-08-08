#include "Generators/ParticleGenerator.hpp"
#include "ParticleTransforms/DefaultParticleTransform.hpp"
#include "Log.hpp"

namespace GilqEngine
{

ParticleGenerator::ParticleGenerator(uint32 maxNewParticlesPerFrame, float maxLifeTime)
    : _lastRevivedParticleIndex(0)
{
    TRACE();
    if (maxLifeTime <= 0.0f)
        throw Exception("Please provide a positive maxLifeTime for the particle generator: ");
    
    // (TARGET_FPS + 5) so that the particle pool is a little bit larger than necessary
    _particles.assign(static_cast<uint32>(ceil(maxLifeTime)) * maxNewParticlesPerFrame * (TARGET_FPS + 5), Particle());

}

void ParticleGenerator::update(
    float deltaTime,
    uint32 nOfParticlesToSpawn,
    const Particle& spawnedParticle,
    IParticleTransform *particleTransform)
{
    TRACE();
    for (uint32 i = 0; i < nOfParticlesToSpawn; ++i)
    {
        uint32 reviveIndex = getNextReviveIndex();
        particleTransform->reviveTransformFunction(spawnedParticle, _particles[reviveIndex]);
    }

    for (uint32 i = 0; i < _particles.size(); ++i)
    {
        particleTransform->updateTransformFunction(deltaTime, _particles[i]);
    }
}

void ParticleGenerator::draw(
    const Matrix<float, 4, 4>& projection,
    Model *particleModel,
    Shader *particleShader)
{
    TRACE();
    GLCall(glBlendFunc(GL_SRC_ALPHA, GL_ONE));
    particleShader->bind();
    for (Particle &particle : _particles)
    {
        if (particle.life > 0.0f)
        {
            particleShader->setMat4("projection", projection);
            particleShader->setMat4("model",
                scale_matrix(particle.size) *
                translation_matrix(particle.position));
            particleShader->setFloat4("u_color", particle.color);
            particleModel->draw(particleShader);
        }
    }
    // how to restore to previous blending function state?
    GLCall(glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA));
}

uint32 ParticleGenerator::getNextReviveIndex()
{
    TRACE();
    // search from the last revived particle
    // this will usually return almost instantly
    for (uint32 i = _lastRevivedParticleIndex; i < _particles.size(); ++i)
    {
        if (_particles[i].life <= 0.0f)
        {
            _lastRevivedParticleIndex = i;
            return (i);
        }
    }

    // otherwise, do a linear search
    for (uint32 i = 0; i < _lastRevivedParticleIndex; ++i)
    {
        if (_particles[i].life <= 0.0f)
        {
            _lastRevivedParticleIndex = i;
            return (i);
        }
    }

    // all particles are still alive, so override the first particle
    // this case might be reached if the updateTransformFunction doesn't decrease the particle lifetime fast enough
    _lastRevivedParticleIndex = 0;
    return (0);
}

}
