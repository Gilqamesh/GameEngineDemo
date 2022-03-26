#ifndef IMOUSEBUTTONEVENT_HPP
# define IMOUSEBUTTONEVENT_HPP

# include "Interfaces/Events/IEvent.hpp"

namespace NAMESPACE
{

class IMouseButtonEvent : public IEvent
{
int mouseCode;
public:
    IMouseButtonEvent(int mouseCode);
    virtual ~IMouseButtonEvent() = default;
    virtual inline int getMouseButton() const final { return (mouseCode); }
    virtual inline int getCategories() const  { return (EventCategory::EventCategoryMouse | EventCategory::EventCategoryInput | EventCategory::EventCategoryMouseButton); }
};

}

#endif
