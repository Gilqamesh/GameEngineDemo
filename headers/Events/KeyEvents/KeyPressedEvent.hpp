#ifndef KEYPRESSEDEVENT_HPP
# define KEYPRESSEDEVENT_HPP

# include "Interfaces/Events/IKeyEvent.hpp"

namespace GilqEngine
{

class KeyPressedEvent : public IKeyEvent
{
unsigned int repeatCount;
public:
    KeyPressedEvent(int keycode, unsigned int repeatCount);
    virtual inline EventType getEventType() const override { return (EventType::KeyPressed); }
    static inline EventType getStaticType() { return (EventType::KeyPressed); }
    inline unsigned int getRepeatCount() const { return (repeatCount); }
};

}

#endif
