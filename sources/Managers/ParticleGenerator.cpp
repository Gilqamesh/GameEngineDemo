#include "Managers/ParticleGenerator.hpp"
#include "Log.hpp"

namespace GilqEngine
{

Particle::Particle()
    : color(1.0f, 1.0f, 1.0f, 1.0f),
      life(0.0f)
{
    TRACE();

}

ParticleGenerator::ParticleGenerator(uint32 amount)
    : _particles(amount, Particle()),
      _amount(amount),
      _particleModel(nullptr),
      _lastUsedParticle(0),
      _objectCoordinator(nullptr),
      _shader(nullptr)
{
    TRACE();
}

void ParticleGenerator::update(
    float dt,
    Vector<float, 2> position,
    Vector<float, 2> velocity,
    uint32 newParticles,
    Vector<float, 2> offset)
{
    TRACE();
    for (uint32 i = 0; i < newParticles; ++i)
    {
        int unusedParticle = firstUnusedParticle();
        respawnParticle(_particles[unusedParticle], position, velocity, offset);
    }

    for (uint32 i = 0; i < _amount; ++i)
    {
        Particle &particle = _particles[i];
        particle.life -= dt;
        if (particle.life > 0.0f)
        {
            particle.position -= particle.velocity * dt;
            particle.color[3] -= dt * 2.5f;
        }
    }
}

void ParticleGenerator::draw(const Matrix<float, 4, 4>& projection)
{
    TRACE();
    if (_particleModel == nullptr)
        throw Exception("particle model is not set in particle generator");
    if (_shader == nullptr)
        throw Exception("shader is not set in particle generator");

    GLCall(glBlendFunc(GL_SRC_ALPHA, GL_ONE));
    _shader->bind();
    for (Particle &particle : _particles)
    {
        if (particle.life > 0.0f)
        {
            _shader->setMat4("projection", projection);
            _shader->setMat4("model",
                scale_matrix(10.0f, 10.0f) *
                translation_matrix(particle.position));
            _shader->setFloat4("u_color", particle.color);
            _particleModel->draw(_shader);
        }
    }
    // how to restore to previous blending function state?
    GLCall(glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA));
}

void ParticleGenerator::setObjectCoordinator(ObjectCoordinator *objectCoordinator)
{
    TRACE();
    _objectCoordinator = objectCoordinator;
}

void ParticleGenerator::setParticleModel(const std::string &modelName)
{
    TRACE();
    if (_objectCoordinator == nullptr)
        throw Exception("object coordinator is not set in particle generator");

    _particleModel = _objectCoordinator->getModel(modelName);
}

void ParticleGenerator::setShader(const string& shaderName)
{
    TRACE();
    if (_objectCoordinator == nullptr)
        throw Exception("object coordinator is not set in particle generator");
    
    _shader = _objectCoordinator->getShader(shaderName);
}

uint32 ParticleGenerator::firstUnusedParticle()
{
    TRACE();
    for (uint32 i = _lastUsedParticle; i < _amount; ++i)
    {
        if (_particles[i].life <= 0.0f)
        {
            _lastUsedParticle = i;
            return (i);
        }
    }

    for (uint32 i = 0; i < _lastUsedParticle; ++i)
    {
        if (_particles[i].life <= 0.0f)
        {
            _lastUsedParticle = i;
            return (i);
        }
    }

    _lastUsedParticle = 0;
    return (0);
}

void ParticleGenerator::respawnParticle(
        Particle& particle,
        Vector<float, 2> position,
        Vector<float, 2> velocity,
        Vector<float, 2> offset)
{
    TRACE();
    float random = getRand(0.0f, 5.0f);
    float rColor = 0.5f + getRand(0.0f, 1.0f);

    particle.position = position + Vector<float, 2>(random, random) + offset;
    particle.color    = Vector<float, 4>(rColor, rColor, rColor, 1.0f);
    particle.life     = 1.0f;
    particle.velocity = velocity * 0.1f;
}

}
