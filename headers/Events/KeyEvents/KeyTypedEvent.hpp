#ifndef KEYTYPEDEVENT_HPP
# define KEYTYPEDEVENT_HPP

# include "Interfaces/Events/IKeyEvent.hpp"

namespace GilqEngine
{

class KeyTypedEvent : public IKeyEvent
{
public:
    KeyTypedEvent(int keycode);
    virtual inline EventType getEventType() const override { return (EventType::KeyTyped); }
    static inline EventType getStaticType() { return (EventType::KeyTyped); }
};

}

#endif
