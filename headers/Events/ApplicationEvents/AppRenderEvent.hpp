#ifndef APPRENDEREVENT_HPP
# define APPRENDEREVENT_HPP

# include "Interfaces/Events/IEvent.hpp"

namespace NAMESPACE
{

class AppRenderEvent : public IEvent
{
public:
    virtual inline EventType getEventType() const override { return (EventType::AppRender); }
    virtual inline int getCategories() const override { return (EventCategoryApplication); }
};

}

#endif
