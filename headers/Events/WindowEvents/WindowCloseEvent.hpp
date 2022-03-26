#ifndef WINDOWCLOSEEVENT_HPP
# define WINDOWCLOSEEVENT_HPP

# include "Interfaces/Events/IEvent.hpp"

namespace NAMESPACE
{

class WindowCloseEvent : public IEvent
{
public:
    virtual inline EventType getEventType() const override { return (EventType::WindowClose); }
    virtual inline int getCategories() const override { return (EventCategoryApplication); }
};

}

#endif
