#ifndef PARTICLEGENERATOR_HPP
# define PARTICLEGENERATOR_HPP

# include "pch.hpp"
# include "Core/Model.hpp"
# include "Interfaces/IParticleTransform.hpp"

namespace GilqEngine
{

/**
 * Each particle generator has to have a different loaded model, as the model's meshes are updated over time
 */
class ParticleGenerator
{
    vector<Particle>   _particles;
    uint32             _lastRevivedParticleIndex;

public:
    /**
     * @param maxNewParticlesPerFrame The maximum number of particles that will be requested each frame.
     *                                The FPS is assumed to be 60. The particle pool size is calculated as:
     *                                Pool size = (Lifetime of a particle) * (New particles / Frame) * (FPS)
     */
    ParticleGenerator(uint32 maxNewParticlesPerFrame, float maxLifeTime);

    void update(
        float deltaTime,
        uint32 nOfParticlesToSpawn,
        const Particle& spawnedParticle,
        IParticleTransform *_particleTransform);
    
    void draw(
        const Matrix<float, 4, 4>& projection,
        Model *particleModel,
        Shader *particleShader);

    // temporary while figuring out instancing
    inline const vector<Particle> &getParticles(void) const { return (_particles); }

private:
    uint32 getNextReviveIndex(void);
};

}

#endif
