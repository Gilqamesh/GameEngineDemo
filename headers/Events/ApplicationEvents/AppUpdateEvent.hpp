#ifndef APPUPDATEEVENT_HPP
# define APPUPDATEEVENT_HPP

# include "Interfaces/Events/IEvent.hpp"

namespace GilqEngine
{

class AppUpdateEvent : public IEvent
{
public:
    virtual inline EventType getEventType() const override { return (EventType::AppUpdate); }
    static inline EventType getStaticType() { return (EventType::AppUpdate); }
    virtual inline int getCategories() const override { return (EventCategoryApplication); }
};

}

#endif
