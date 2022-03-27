#ifndef MACAPPLICATION_HPP
# define MACAPPLICATION_HPP

# include "Interfaces/IApplication.hpp"
# include "Windows/MacWindow.hpp"
# include "LayerManagers/LayerStack.hpp"

namespace NAMESPACE
{

class MacApplication : public IApplication
{
MacWindow *window;
LayerStack *layerManager;
bool running;
bool minimized;
public:
    MacApplication();
    ~MacApplication();
    virtual void run() override;
    virtual void onEvent(IEvent &e) override;
    virtual void pushLayer(ILayer *layer) override;
    virtual void popLayer(ILayer *layer) override;
    inline MacWindow *getWindow() { return (window); }
};

}

#endif
