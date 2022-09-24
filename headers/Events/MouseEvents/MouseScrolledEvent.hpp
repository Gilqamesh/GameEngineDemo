#ifndef MOUSESCROLLEDEVENT_HPP
# define MOUSESCROLLEDEVENT_HPP

# include "Interfaces/Events/IEvent.hpp"

namespace GilqEngine
{

class MouseScrolledEvent : public IEvent
{
float offsetX;
float offsetY;
public:
    MouseScrolledEvent(float offsetX, float offsetY);
    inline float getOffsetX() const { return (offsetX); }
    inline float getOffsetY() const { return (offsetY); }
    virtual inline EventType getEventType() const override { return (EventType::MouseScrolled); }
    static inline EventType getStaticType() { return (EventType::MouseScrolled); }
    virtual inline int getCategories() const override { return (EventCategoryMouse | EventCategoryInput); }
};

}

#endif
