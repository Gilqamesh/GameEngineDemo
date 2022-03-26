#ifndef ILAYERMANAGER_HPP
# define ILAYERMANAGER_HPP

# include "pch.hpp"

namespace NAMESPACE
{

class ILayer;

template <class Iterable>
class ILayerManager
{
public:
    typedef typename Iterable::iterator       iterator;
    typedef typename Iterable::const_iterator const_iterator;

    virtual ~ILayerManager() = default;
    virtual void pushLayer(ILayer *layer) = 0;
    virtual void popLayer(ILayer *layer) = 0;

    virtual iterator begin() = 0;
    virtual iterator end() = 0;
    virtual const_iterator begin() const = 0;
    virtual const_iterator end() const = 0;
};

}

#endif
