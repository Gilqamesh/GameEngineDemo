#include "Events/KeyEvents/KeyReleasedEvent.hpp"

namespace NAMESPACE
{

KeyReleasedEvent::KeyReleasedEvent(int keycode)
    : IKeyEvent(keycode)
{
    TRACE();
}

}
