#ifndef PARTICLEGENERATORMANAGER_HPP
#define PARTICLEGENERATORMANAGER_HPP

#include "Generators/ParticleGenerator.hpp"
#include "Managers/ParticleTransformManager.hpp"

namespace GilqEngine
{

    typedef u32 GeneratorId;

    class ParticleGeneratorManager
    {
        struct GeneratorParameters
        {
            ParticleGenerator *particleGenerator;
            Shader *shader;
            Model *model;
            IParticleTransform *particleTransform;
            u32 particlesPerFrame;
            Particle particle;
        };

        unordered_map<GeneratorId, GeneratorParameters> _generatorParameters;

        ParticleTransformManager _particleTransformManager;

        GeneratorId _currentGeneratorId;

    public:
        ParticleGeneratorManager();
        ~ParticleGeneratorManager();

        GeneratorId addParticleGenerator(u32 maxNewParticlesPerFrame, float maxLifeTime);

        void deleteParticleGenerator(GeneratorId generatorId);

        template <typename ParticleTransform>
        void addParticleTransform(const string &transformName)
        {
            TRACE();
            _particleTransformManager.addParticleTransform<ParticleTransform>(transformName);
        }

        IParticleTransform *getParticleTransform(const string &transformName);

        void setShader(GeneratorId generatorId, Shader *shader);
        void setModel(GeneratorId generatorId, Model *model);
        void setParticleTransform(GeneratorId generatorId, const string &transformName);
        void setParticlesPerFrame(GeneratorId generatorId, u32 particlesPerFrame);
        void setParticle(GeneratorId generatorId, const Particle &particleToSpawn);

        Particle &getParticle(GeneratorId generatorId);

        // temporary while making instancing work for particle generators
        const string &getGeneratorModelName(GeneratorId generatorId);
        void *getParticlePositionsData(GeneratorId generatorId);
        void *getParticleColorsData(GeneratorId generatorId);
        void *getParticleSizesData(GeneratorId generatorId);
        u32 getNumberOfAliveParticles(GeneratorId generatorId);

        void update(GeneratorId generatorId, float deltaTime);

        void draw(GeneratorId generatorId, const Matrix<float, 4, 4> &projection);

        void clear(void);
    };

}

#endif
