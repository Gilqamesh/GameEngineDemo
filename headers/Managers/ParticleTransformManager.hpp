#ifndef PARTICLETRANSFORMMANAGER_HPP
# define PARTICLETRANSFORMMANAGER_HPP

# include "Interfaces/IParticleTransform.hpp"

namespace GilqEngine
{

class ParticleTransformManager
{
    unordered_map<string, IParticleTransform *> _particleTransforms;

public:
    ParticleTransformManager();
    ~ParticleTransformManager();

    template <typename ParticleTransform>
    void addParticleTransform(const string& transformName)
    {
        TRACE();
        if (exists(transformName) == true)
        {
            LOG_E("Warning: " + transformName + " already exists in the particle transform manager");
            return ;
        }
        
        _particleTransforms[transformName] = new ParticleTransform();
    }

    void deleteParticleTransform(const string& transformName);

    void clear();

    IParticleTransform *getParticleTransform(const string& transformName);

private:
    bool exists(const string& transformName) const;
};

}

#endif
