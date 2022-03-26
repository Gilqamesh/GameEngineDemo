#ifndef MACAPPLICATION_HPP
# define MACAPPLICATION_HPP

# include "Interfaces/IApplication.hpp"
# include "Windows/MacWindow.hpp"

namespace NAMESPACE
{

class MacApplication : public IApplication
{
MacWindow *window;
public:
    void run();
    void onEvent(IEvent &e);
    void pushLayer(ILayer *layer);
    void pushOverlay(ILayer *overlay);
};

}

#endif
