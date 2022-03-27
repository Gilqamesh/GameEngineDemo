#ifndef LAYERSTACK_HPP
# define LAYERSTACK_HPP

# include "Interfaces/ILayerManager.hpp"

namespace NAMESPACE
{

class LayerStack : public ILayerManager
{
std::vector<ILayer *> layers;
unsigned int numberOfRegularLayers;
public:
    typedef typename std::vector<ILayer *>::iterator                iterator;
    typedef typename std::vector<ILayer *>::const_iterator          const_iterator;
    typedef typename std::vector<ILayer *>::reverse_iterator        reverse_iterator;
    typedef typename std::vector<ILayer *>::const_reverse_iterator  const_reverse_iterator;

    LayerStack();
    ~LayerStack();
    virtual void pushLayer(ILayer *layer) override;
    virtual void popLayer(ILayer *layer) override;

    inline iterator begin() { return (layers.begin()); }
    inline iterator end() { return (layers.end()); }
    inline const_iterator begin() const { return (layers.begin()); }
    inline const_iterator end() const { return (layers.end()); }

    inline reverse_iterator rbegin() { return (layers.rbegin()); }
    inline reverse_iterator rend() { return (layers.rend()); }
    inline const_reverse_iterator rbegin() const { return (layers.rbegin()); }
    inline const_reverse_iterator rend() const { return (layers.rend()); }
};

}

#endif
