#ifndef ILAYERMANAGER_HPP
# define ILAYERMANAGER_HPP

# include "pch.hpp"

namespace GilqEngine
{

class ILayer;

class ILayerManager
{
public:
    virtual ~ILayerManager() = default;
    virtual void pushLayer(ILayer *layer) = 0;
    virtual void popLayer(ILayer *layer) = 0;
};

}

#endif
