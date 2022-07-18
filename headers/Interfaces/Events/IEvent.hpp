#ifndef IEVENT_HPP
# define IEVENT_HPP

# include "pch.hpp"

namespace NAMESPACE
{

enum class EventType
{
    None = 0,
    WindowClose, WindowResize, WindowFocus, WindowLostFocus, WindowMoved,
    AppTick, AppUpdate, AppRender,
    KeyPressed, KeyReleased, KeyTyped,
    MouseButtonPressed, MouseButtonReleased, MouseMovedEvent, MouseScrolled
};

enum EventCategory
{
    None                     = 0,
    EventCategoryApplication = 1 << 0,
    EventCategoryInput       = 1 << 1,
    EventCategoryKeyboard    = 1 << 2,
    EventCategoryMouse       = 1 << 3,
    EventCategoryMouseButton = 1 << 4
};

class IEvent
{
bool _handled;
public:
    IEvent();
    virtual ~IEvent() = default;

    inline void setHandled(bool handled) { _handled = handled; }
    inline bool isHandled() const { return (_handled); }

    virtual EventType getEventType() const = 0;
    virtual int getCategories() const = 0;
    inline bool isInCategory(EventCategory category) const { return (getCategories() & category); }
};

}

#endif
