#ifndef MACWINDOW_HPP
# define MACWINDOW_HPP

# include "Interfaces/IWindow.hpp"

namespace NAMESPACE
{

class MacWindow : public IWindow
{
GLFWwindow *window;
struct MacWindowProps
{
    MacWindowProps()
        : width(1600), height(900), title("Default Title") { }
    int width;
    int height;
    std::string title;
    eventCallbackFn eventCallback;
    bool VSync;
} windowProps;
public:
    MacWindow(const MacWindowProps &windowProps = MacWindowProps());
    virtual void onUpdate() override;
    virtual inline int getWidth() const override { return (windowProps.width); }
    virtual inline int getHeight() const override { return (windowProps.height); }
    /* Try to avoid the need for this */
    virtual inline GLFWwindow *getWindow() const override { return (window); }
    virtual void setVSync(bool enabled) override;
    virtual inline bool isVSync() override { return (windowProps.VSync); }
    virtual inline void setEventCallback(const eventCallbackFn &fn) override { windowProps.eventCallback = fn; }
};

}

#endif
