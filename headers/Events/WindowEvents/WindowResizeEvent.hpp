#ifndef WINDOWRESIZEEVENT_HPP
# define WINDOWRESIZEEVENT_HPP

# include "Interfaces/Events/IEvent.hpp"

namespace NAMESPACE
{

class WindowResizeEvent : public IEvent
{
unsigned int width;
unsigned int height;
public:
    WindowResizeEvent(unsigned int width, unsigned int height);
    virtual inline EventType getEventType() const override { return (EventType::WindowResize); }
    virtual inline int getCategories() const override { return (EventCategoryApplication); }
    inline unsigned int getWidth() const { return (width); }
    inline unsigned int getHeight() const { return (height); }
};

}

#endif
