#ifndef IAPPLICATION_HPP
# define IAPPLICATION_HPP

# include "pch.hpp"
# include "Interfaces/ILayerManager.hpp"

namespace NAMESPACE
{

class IEvent;
class ILayer;

/*
 * Observer Pattern
 * Application is the Observable
 * Layers are the Observers
 * Additionally, registration order of the event defines
 *  - rendering order
 *  - event order
 */
class IApplication
{
public:
    virtual ~IApplication() = default;
    virtual void run() = 0;
    virtual void onEvent(IEvent &e) = 0;
    virtual void pushLayer(ILayer *layer) = 0;
    virtual void popLayer(ILayer *layer) = 0;
};

}

#endif