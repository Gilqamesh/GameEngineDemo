#ifndef IWINDOW_HPP
# define IWINDOW_HPP

# include "pch.hpp"

namespace GilqEngine
{

class IEvent;

class IWindow
{
public:
    typedef typename std::function<void (IEvent &)> eventCallbackFn;

    IWindow();
    virtual ~IWindow() = default;
    virtual void onUpdate() = 0;

    virtual int getWidth() const = 0;
    virtual int getHeight() const = 0;
    virtual GLFWwindow *getWindow() const = 0;

    virtual void setVSync(bool enabled) = 0;
    virtual bool isVSync() = 0;
    virtual void setEventCallback(const eventCallbackFn &) = 0;
};

}

#endif
