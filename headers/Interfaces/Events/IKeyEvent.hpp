#ifndef IKEYEVENT_HPP
# define IKEYEVENT_HPP

# include "Interfaces/Events/IEvent.hpp"

namespace NAMESPACE
{

class IKeyEvent : public IEvent
{
public:
    IKeyEvent(int keycode);
    virtual ~IKeyEvent() = default;
    virtual inline int getCategories() const final { return (EventCategoryKeyboard | EventCategoryInput); }
    virtual int getKeycode() const { return (keycode); }
private:
    int keycode;
};

}

#endif
