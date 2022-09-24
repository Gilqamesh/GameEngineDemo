#ifndef MOUSEMOVED_HPP
# define MOUSEMOVED_HPP

# include "Interfaces/Events/IEvent.hpp"

namespace GilqEngine
{

class MouseMovedEvent : public IEvent
{
float posX;
float posY;
public:
    MouseMovedEvent(float x, float y);
    inline float getX() const { return (posX); }
    inline float getY() const { return (posY); }
    virtual inline EventType getEventType() const override { return (EventType::MouseMovedEvent); }
    static inline EventType getStaticType() { return (EventType::MouseMovedEvent); }
    virtual inline int getCategories() const override { return (EventCategoryMouse | EventCategoryInput); }
};

}

#endif
