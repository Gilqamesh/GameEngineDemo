#ifndef IKEYEVENT_HPP
# define IKEYEVENT_HPP

# include "pch.hpp"
# include "Interfaces/Events/IEvent.hpp"

namespace NAMESPACE
{

class IKeyEvent : public IEvent
{
public:
    IKeyEvent(int keycode);
    virtual ~IKeyEvent() = default;
    virtual int getKeycode() const { return (keycode); }
private:
    int keycode;
};

}

#endif
