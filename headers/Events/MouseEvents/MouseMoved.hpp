#ifndef MOUSEMOVED_HPP
# define MOUSEMOVED_HPP

# include "Interfaces/Events/IEvent.hpp"

namespace NAMESPACE
{

class MouseMoved : public IEvent
{
float posX;
float posY;
public:
    MouseMoved(float x, float y);
    inline float getX() const { return (posX); }
    inline float getY() const { return (posY); }
    virtual inline EventType getEventType() const override { return (EventType::MouseMoved); }
    virtual inline int getCategories() const override { return (EventCategoryMouse | EventCategoryInput); }
};

}

#endif
