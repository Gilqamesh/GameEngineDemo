#ifndef PARTICLEGENERATOR_HPP
#define PARTICLEGENERATOR_HPP

#include "pch.hpp"
#include "Core/Model.hpp"
#include "Interfaces/IParticleTransform.hpp"

namespace GilqEngine
{

    /**
     * Each particle generator has to have a different loaded model, as the model's meshes are updated over time
     */
    class ParticleGenerator
    {
        vector<Particle> _particles;

        /**
         * Need for instancing
         * NOTE(david): currently there are duplicate memory stored and this is purely just to have a contiguous data for instancing,
         *              try to avoid duplication
         */
        vector<Vector<float, 2>> _particlePositions;
        vector<Vector<float, 4>> _particleColors;
        vector<Vector<float, 2>> _particleSizes;

        u32 _lastRevivedParticleIndex;

        u32 _numberOfAliveParticles;

    public:
        /**
         * @param maxNewParticlesPerFrame The maximum number of particles that will be requested each frame.
         *                                The FPS is assumed to be 60. The particle pool size is calculated as:
         *                                Pool size = (Lifetime of a particle) * (New particles / Frame) * (FPS)
         */
        ParticleGenerator(u32 maxNewParticlesPerFrame, float maxLifeTime);

        void update(
            float deltaTime,
            u32 nOfParticlesToSpawn,
            const Particle &spawnedParticle,
            IParticleTransform *_particleTransform);

        void draw(
            const Matrix<float, 4, 4> &projection,
            Model *particleModel,
            Shader *particleShader);

        // temporary while figuring out instancing
        inline void *getParticlePositionsData(void) { return (_particlePositions.data()); }
        inline void *getParticleColorsData(void) { return (_particleColors.data()); }
        inline void *getParticleSizesData(void) { return (_particleSizes.data()); }
        inline u32 getNumberOfAliveParticles(void) { return (_numberOfAliveParticles); }

    private:
        u32 getNextReviveIndex(void);
    };

}

#endif
