#ifndef APPTICKEVENT_HPP
# define APPTICKEVENT_HPP

# include "Interfaces/Events/IEvent.hpp"

namespace NAMESPACE
{

class AppTickEvent : public IEvent
{
public:
    virtual inline EventType getEventType() const override { return (EventType::AppTick); }
    virtual inline int getCategories() const override { return (EventCategoryApplication); }
};

}

#endif
