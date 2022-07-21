#ifndef MOUSEBUTTONPRESSEDEVENT_HPP
# define MOUSEBUTTONPRESSEDEVENT_HPP

# include "Interfaces/Events/IMouseButtonEvent.hpp"

namespace GilqEngine
{

class MouseButtonPressedEvent : public IMouseButtonEvent
{
public:
    MouseButtonPressedEvent(int mouseCode);
    virtual inline EventType getEventType() const override final { return (EventType::MouseButtonPressed); }
    static inline EventType getStaticType() { return (EventType::MouseButtonPressed); }
};

}

#endif
