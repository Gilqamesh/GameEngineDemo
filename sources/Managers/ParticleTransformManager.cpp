#include "Managers/ParticleTransformManager.hpp"

namespace GilqEngine
{

ParticleTransformManager::ParticleTransformManager()
{
    TRACE();
}

ParticleTransformManager::~ParticleTransformManager()
{
    TRACE();
    clear();
}

void ParticleTransformManager::deleteParticleTransform(const string& transformName)
{
    TRACE();
    if (exists(transformName) == false)
    {
        LOG_E("Warning: " + transformName + " was not found in the particle transform manager");
        return ;
    }

    auto it = _particleTransforms.find(transformName);
    delete it->second;
    _particleTransforms.erase(it);
}

void ParticleTransformManager::clear()
{
    TRACE();
    for (auto &p : _particleTransforms)
    {
        delete p.second;
    }
    _particleTransforms.clear();
}

IParticleTransform *ParticleTransformManager::getParticleTransform(const string& transformName)
{
    TRACE();
    if (exists(transformName) == false)
        throw Exception(transformName + " was not found in the particle transform manager");
    
    return (_particleTransforms[transformName]);
}

bool ParticleTransformManager::exists(const string& transformName) const
{
    TRACE();
    return (_particleTransforms.count(transformName) > 0);
}

}
