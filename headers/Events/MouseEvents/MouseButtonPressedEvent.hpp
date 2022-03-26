#ifndef MOUSEBUTTONPRESSEDEVENT_HPP
# define MOUSEBUTTONPRESSEDEVENT_HPP

# include "Interfaces/Events/IMouseButtonEvent.hpp"

namespace NAMESPACE
{

class MouseButtonPressedEvent : public IMouseButtonEvent
{
public:
    MouseButtonPressedEvent(int mouseCode);
    virtual inline EventType getEventType() const override final { return (EventType::MouseButtonPressed); }
};

}

#endif
