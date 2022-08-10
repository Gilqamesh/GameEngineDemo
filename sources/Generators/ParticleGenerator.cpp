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
    for (const Particle& particle : _particles)
    {
        _particlePositions.push_back(particle.position);
        _particleColors.push_back(particle.color);
        _particleSizes.push_back(particle.size);
    }
}

void ParticleGenerator::update(
    float deltaTime,
    uint32 nOfParticlesToSpawn,
    const Particle& spawnedParticle,
    IParticleTransform *particleTransform)
{
    TRACE();
    nOfParticlesToSpawn = static_cast<uint32>(round((static_cast<float>(nOfParticlesToSpawn) * 60.0f * deltaTime)));
    for (uint32 i = 0; i < nOfParticlesToSpawn; ++i)
    {
        uint32 reviveIndex = getNextReviveIndex();
        particleTransform->reviveTransformFunction(spawnedParticle, _particles[reviveIndex]);
    }

    _numberOfAliveParticles = 0;
    for (uint32 i = 0; i < _particles.size(); ++i)
    {
        particleTransform->updateTransformFunction(deltaTime, _particles[i]);
        if (_particles[i].life > 0.0f && _particles[i].color[3] >= 0.0f)
        {
            _particlePositions[_numberOfAliveParticles] = _particles[i].position;
            _particleColors[_numberOfAliveParticles] = _particles[i].color;
            _particleSizes[_numberOfAliveParticles] = _particles[i].size;
            ++_numberOfAliveParticles;
        }
    }
}

void ParticleGenerator::draw(
    const Matrix<float, 4, 4>& projection,
    Model *particleModel,
    Shader *particleShader)
{
    TRACE();
    particleShader->bind();
    particleShader->setMat4("projection", projection);
    particleModel->drawInstanced(particleShader, _numberOfAliveParticles);
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
