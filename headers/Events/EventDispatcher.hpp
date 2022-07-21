#ifndef EVENTDISPATCHER_HPP
# define EVENTDISPATCHER_HPP

# include "pch.hpp"
# include "Interfaces/Events/IEvent.hpp"

namespace GilqEngine
{

class EventDispatcher
{
IEvent &e;
public:
    EventDispatcher(IEvent &e) : e(e) { }
    /*
     * EventHandlingFunction will be deduced by the compiler
     */
    template <typename Event, typename EventHandlingFunction>
    bool dispatch(const EventHandlingFunction &handler)
    {
        if (e.getEventType() == Event::getStaticType())
        {
            e.setHandled(e.isHandled() | handler(static_cast<Event &>(e)));
            return (true);
        }
        return (false);
    }
};

}

#endif
