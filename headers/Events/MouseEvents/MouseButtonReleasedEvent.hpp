#ifndef MOUSEBUTTONRELEASEDEVENT_HPP
# define MOUSEBUTTONRELEASEDEVENT_HPP

# include "Interfaces/Events/IMouseButtonEvent.hpp"

namespace GilqEngine
{

class MouseButtonReleasedEvent : public IMouseButtonEvent
{
public:
    MouseButtonReleasedEvent(int mouseCode);
    virtual inline EventType getEventType() const override { return (EventType::MouseButtonReleased); }
    static inline EventType getStaticType() { return (EventType::MouseButtonReleased); }
};

}

#endif
