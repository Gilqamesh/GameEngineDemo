#ifndef PARTICLEGENERATOR_HPP
# define PARTICLEGENERATOR_HPP

# include "pch.hpp"
# include "Core/Model.hpp"
# include "Managers/ObjectCoordinator.hpp"

namespace GilqEngine
{

struct Particle
{
    Vector<float, 2> position;
    Vector<float, 2> velocity;
    Vector<float, 4> color;
    float            life;

    Particle();
};

class ParticleGenerator
{
    vector<Particle>    _particles;
    uint32              _amount;
    Model               *_particleModel;
    uint32              _lastUsedParticle;
    ObjectCoordinator   *_objectCoordinator;
    Shader              *_shader;
public:
    ParticleGenerator(uint32 amount);
    void update(
        float dt,
        Vector<float, 2> position,
        Vector<float, 2> velocity,
        uint32 newParticles,
        Vector<float, 2> offset);
    void draw(const Matrix<float, 4, 4>& projection);
    void setObjectCoordinator(ObjectCoordinator *objectCoordinator);
    void setParticleModel(const string& modelName);
    void setShader(const string& shaderName);

private:
    uint32 firstUnusedParticle();
    void respawnParticle(
        Particle& particle,
        Vector<float, 2> position,
        Vector<float, 2> velocity,
        Vector<float, 2> offset = Vector<float, 2>(0.0f, 0.0f));
};

}

#endif
