#ifndef IWINDOW_HPP
# define IWINDOW_HPP

# include "pch.hpp"

namespace NAMESPACE
{

class IEvent;

class IWindow
{
public:
    virtual void onUpdate() = 0;
    virtual int getWidth() const = 0;
    virtual int getHeigh() const = 0;
    virtual void *getWindow() const = 0;
    virtual void setVSync(bool enabled) = 0;
    virtual bool isVSync() = 0;
    virtual void setEventCallback(void (*)(IEvent &e)) = 0;
};

}

#endif
