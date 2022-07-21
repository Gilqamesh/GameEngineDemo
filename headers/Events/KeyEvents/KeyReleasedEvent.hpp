#ifndef KEYRELEASEDEVENT_HPP
# define KEYRELEASEDEVENT_HPP

# include "Interfaces/Events/IKeyEvent.hpp"

namespace GilqEngine
{

class KeyReleasedEvent : public IKeyEvent
{
public:
    KeyReleasedEvent(int keycode);
    virtual inline EventType getEventType() const override { return (EventType::KeyReleased); }
    static inline EventType getStaticType() { return (EventType::KeyReleased); }
};

}

#endif
