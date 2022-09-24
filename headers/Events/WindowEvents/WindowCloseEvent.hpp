#ifndef WINDOWCLOSEEVENT_HPP
# define WINDOWCLOSEEVENT_HPP

# include "Interfaces/Events/IEvent.hpp"

namespace GilqEngine
{

class WindowCloseEvent : public IEvent
{
public:
    virtual inline EventType getEventType() const override { return (EventType::WindowClose); }
    static inline EventType getStaticType() { return (EventType::WindowClose); }
    virtual inline int getCategories() const override { return (EventCategoryApplication); }
};

}

#endif
