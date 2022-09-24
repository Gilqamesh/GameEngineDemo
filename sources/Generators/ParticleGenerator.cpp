#include "Generators/ParticleGenerator.hpp"
#include "ParticleTransforms/DefaultParticleTransform.hpp"
#include "Log.hpp"
#include "Debug/Stopwatch.hpp"

namespace GilqEngine
{

    ParticleGenerator::ParticleGenerator(u32 maxNewParticlesPerFrame, float maxLifeTime)
        : _lastRevivedParticleIndex(0)
    {
        TRACE();
        if (maxLifeTime <= 0.0f)
            throw Exception("Please provide a positive maxLifeTime for the particle generator: ");

        // (TARGET_FPS + 5) so that the particle pool is a little bit larger than necessary
        _particles.assign(static_cast<u32>(ceil(maxLifeTime)) * maxNewParticlesPerFrame * (TARGET_FPS + 5), Particle());
        LOG("Particle pool size: " << _particles.size());
        ASSERT(_particles.size() < 10000);
        for (const Particle &particle : _particles)
        {
            _particlePositions.push_back(particle.position);
            _particleColors.push_back(particle.color);
            _particleSizes.push_back(particle.size);
        }
    }

    void ParticleGenerator::update(
        float deltaTime,
        u32 nOfParticlesToSpawn,
        const Particle &spawnedParticle,
        IParticleTransform *particleTransform)
    {
        TRACE();
        nOfParticlesToSpawn = static_cast<u32>(round((static_cast<float>(nOfParticlesToSpawn) * 60.0f * deltaTime)));
        BEGIN_TIMED_BLOCK(ParticleGeneratorRevive);
        for (u32 i = 0; i < nOfParticlesToSpawn; ++i)
        {
            u32 reviveIndex = getNextReviveIndex();
            particleTransform->reviveTransformFunction(spawnedParticle, _particles[reviveIndex]);
        }
        END_TIMED_BLOCK(ParticleGeneratorRevive);

        _numberOfAliveParticles = 0;
        u32 lastDrawnParticleIndex = 0;
        BEGIN_TIMED_BLOCK(ParticleGeneratorUpdate);
        for (u32 i = 0; i < _particles.size(); ++i)
        {
            BEGIN_TIMED_BLOCK(UpdateTransformFn);
            particleTransform->updateTransformFunction(deltaTime, _particles[i]);
            END_TIMED_BLOCK(UpdateTransformFn);
            if (_particles[i].life > 0.0f && _particles[i].color[3] >= 0.0f)
            {
                lastDrawnParticleIndex = i;
                _particlePositions[_numberOfAliveParticles] = _particles[i].position;
                _particleColors[_numberOfAliveParticles] = _particles[i].color;
                _particleSizes[_numberOfAliveParticles] = _particles[i].size;
                ++_numberOfAliveParticles;
            }
        }
        END_TIMED_BLOCK(ParticleGeneratorUpdate);
        // LOG("Last drawn particle index: " << lastDrawnParticleIndex);
    }

    void ParticleGenerator::draw(
        const Matrix<float, 4, 4> &projection,
        Model *particleModel,
        Shader *particleShader)
    {
        TRACE();
        particleShader->bind();
        particleShader->setMat4("projection", projection);
        particleModel->drawInstanced(particleShader, _numberOfAliveParticles);
    }

    u32 ParticleGenerator::getNextReviveIndex()
    {
        TRACE();
        // search from the last revived particle
        // this will usually return almost instantly
        for (u32 i = _lastRevivedParticleIndex; i < _particles.size(); ++i)
        {
            if (_particles[i].life <= 0.0f)
            {
                _lastRevivedParticleIndex = i;
                return (i);
            }
        }

        // otherwise, do a linear search
        for (u32 i = 0; i < _lastRevivedParticleIndex; ++i)
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
