#ifndef PARTICLEGENERATORMANAGER_HPP
# define PARTICLEGENERATORMANAGER_HPP

# include "Generators/ParticleGenerator.hpp"
# include "Managers/ParticleTransformManager.hpp"

namespace GilqEngine
{

typedef uint32 GeneratorId;

class ParticleGeneratorManager
{
    struct GeneratorParameters
    {
        ParticleGenerator   *particleGenerator;
        Shader              *shader;
        Model               *model;
        IParticleTransform  *particleTransform;
        uint32              particlesPerFrame;
        Particle            particleToSpawn;
    };

    unordered_map<GeneratorId, GeneratorParameters> _generatorParameters;
    
    ParticleTransformManager _particleTransformManager;

    GeneratorId _currentGeneratorId;

public:
    ParticleGeneratorManager();
    ~ParticleGeneratorManager();

    GeneratorId addParticleGenerator(uint32 maxNewParticlesPerFrame, float maxLifeTime);

    void deleteParticleGenerator(GeneratorId generatorId);

    template <typename ParticleTransform>
    void addParticleTransform(const string& transformName)
    {
        TRACE();
        _particleTransformManager.addParticleTransform<ParticleTransform>(transformName);
    }

    IParticleTransform *getParticleTransform(const string& transformName);

    void setShader(GeneratorId generatorId, Shader *shader);
    void setModel(GeneratorId generatorId, Model *model);
    void setParticleTransform(GeneratorId generatorId, const string& transformName);
    void setParticlesPerFrame(GeneratorId generatorId, uint32 particlesPerFrame);
    void setParticleToSpawn(GeneratorId generatorId, const Particle& particleToSpawn);

    void update(GeneratorId generatorId, float deltaTime);

    void draw(GeneratorId generatorId, const Matrix<float, 4, 4>& projection);

    void clear(void);
};

}

#endif
