#ifndef MACWINDOW_HPP
# define MACWINDOW_HPP

# include "Interfaces/IWindow.hpp"

namespace NAMESPACE
{

struct MacWindowProps
{
    MacWindowProps()
        : width(1600), height(900), title("Default Title") { }
    int width;
    int height;
    std::string title;
    std::function<void (IEvent &)> eventCallback;
    bool VSync;
};

class MacWindow : public IWindow
{
GLFWwindow *window;
MacWindowProps windowProps;
public:
    MacWindow(const MacWindowProps &windowProps = MacWindowProps());
    virtual void onUpdate() override;
    virtual inline int getWidth() const override { return (windowProps.width); }
    virtual inline int getHeigh() const override { return (windowProps.height); }
    virtual inline void *getWindow() const override { return ((void *)window); }
    virtual void setVSync(bool enabled) override;
    virtual inline bool isVSync() override { return (windowProps.VSync); }
    virtual inline void setEventCallback(const std::function<void (IEvent &)> &fn) override { windowProps.eventCallback = fn; }
};

}

#endif
