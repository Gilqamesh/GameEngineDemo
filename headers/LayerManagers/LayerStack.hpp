#ifndef LAYERSTACK_HPP
# define LAYERSTACK_HPP

# include "Interfaces/ILayerManager.hpp"

namespace NAMESPACE
{

class LayerStack : public ILayerManager<std::vector<ILayer *>>
{
std::vector<ILayer *> layers;
public:
    ~LayerStack();
    virtual void pushLayer(ILayer *layer) override;
    virtual void popLayer(ILayer *layer) override;

    virtual inline iterator begin() override { return (layers.begin()); }
    virtual inline iterator end() override { return (layers.end()); }
    virtual inline const_iterator begin() const override { return (layers.begin()); }
    virtual inline const_iterator end() const override { return (layers.end()); }
};

}

#endif
