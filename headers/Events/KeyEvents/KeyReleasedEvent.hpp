#ifndef KEYRELEASEDEVENT_HPP
# define KEYRELEASEDEVENT_HPP

# include "Interfaces/Events/IKeyEvent.hpp"

namespace NAMESPACE
{

class KeyReleasedEvent : public IKeyEvent
{
public:
    KeyReleasedEvent(int keycode);
    virtual inline EventType getEventType() const override { return (EventType::KeyReleased); }
};

}

#endif
