#include "Managers/ParticleGeneratorManager.hpp"
#include "ParticleTransforms/DefaultParticleTransform.hpp"

namespace GilqEngine
{

    ParticleGeneratorManager::ParticleGeneratorManager()
        : _currentGeneratorId(0)
    {
        TRACE();
        _particleTransformManager.addParticleTransform<DefaultParticleTransform>("DefaultParticleTransform");
    }

    ParticleGeneratorManager::~ParticleGeneratorManager()
    {
        TRACE();
        clear();
    }

    GeneratorId ParticleGeneratorManager::addParticleGenerator(u32 maxNewParticlesPerFrame, float maxLifeTime)
    {
        TRACE();
        GeneratorId generatorId = _currentGeneratorId++;

        _generatorParameters[generatorId].particleGenerator = new ParticleGenerator(maxNewParticlesPerFrame, maxLifeTime);
        _generatorParameters[generatorId].particleTransform = _particleTransformManager.getParticleTransform("DefaultParticleTransform");

        return (generatorId);
    }

    void ParticleGeneratorManager::deleteParticleGenerator(GeneratorId generatorId)
    {
        TRACE();

        delete _generatorParameters[generatorId].particleGenerator;
        _generatorParameters.erase(generatorId);
    }

    IParticleTransform *ParticleGeneratorManager::getParticleTransform(const string &transformName)
    {
        TRACE();
        return (_particleTransformManager.getParticleTransform(transformName));
    }

    void ParticleGeneratorManager::setShader(GeneratorId generatorId, Shader *shader)
    {
        TRACE();
        _generatorParameters[generatorId].shader = shader;
    }

    void ParticleGeneratorManager::setModel(GeneratorId generatorId, Model *model)
    {
        TRACE();
        _generatorParameters[generatorId].model = model;
    }

    void ParticleGeneratorManager::setParticleTransform(GeneratorId generatorId, const string &transformName)
    {
        TRACE();
        _generatorParameters[generatorId].particleTransform = _particleTransformManager.getParticleTransform(transformName);
    }

    void ParticleGeneratorManager::setParticlesPerFrame(GeneratorId generatorId, u32 particlesPerFrame)
    {
        TRACE();
        _generatorParameters[generatorId].particlesPerFrame = particlesPerFrame;
    }

    void ParticleGeneratorManager::setParticle(GeneratorId generatorId, const Particle &particle)
    {
        TRACE();
        _generatorParameters[generatorId].particle = particle;
    }

    Particle &ParticleGeneratorManager::getParticle(GeneratorId generatorId)
    {
        TRACE();
        return (_generatorParameters[generatorId].particle);
    }

    const string &ParticleGeneratorManager::getGeneratorModelName(GeneratorId generatorId)
    {
        TRACE();
        return (_generatorParameters[generatorId].model->getName());
    }

    void *ParticleGeneratorManager::getParticlePositionsData(GeneratorId generatorId)
    {
        TRACE();
        return (_generatorParameters[generatorId].particleGenerator->getParticlePositionsData());
    }

    void *ParticleGeneratorManager::getParticleColorsData(GeneratorId generatorId)
    {
        TRACE();
        return (_generatorParameters[generatorId].particleGenerator->getParticleColorsData());
    }

    void *ParticleGeneratorManager::getParticleSizesData(GeneratorId generatorId)
    {
        TRACE();
        return (_generatorParameters[generatorId].particleGenerator->getParticleSizesData());
    }

    u32 ParticleGeneratorManager::getNumberOfAliveParticles(GeneratorId generatorId)
    {
        TRACE();
        return (_generatorParameters[generatorId].particleGenerator->getNumberOfAliveParticles());
    }

    void ParticleGeneratorManager::update(GeneratorId generatorId, float deltaTime)
    {
        TRACE();
        _generatorParameters[generatorId].particleGenerator->update(
            deltaTime,
            _generatorParameters[generatorId].particlesPerFrame,
            _generatorParameters[generatorId].particle,
            _generatorParameters[generatorId].particleTransform);
    }

    void ParticleGeneratorManager::draw(GeneratorId generatorId, const Matrix<float, 4, 4> &projection)
    {
        TRACE();
        _generatorParameters[generatorId].particleGenerator->draw(
            projection,
            _generatorParameters[generatorId].model,
            _generatorParameters[generatorId].shader);
    }

    void ParticleGeneratorManager::clear(void)
    {
        TRACE();
        for (auto p : _generatorParameters)
        {
            delete p.second.particleGenerator;
        }
        _particleTransformManager.clear();
        _generatorParameters.clear();
        _currentGeneratorId = 0;
    }

}
