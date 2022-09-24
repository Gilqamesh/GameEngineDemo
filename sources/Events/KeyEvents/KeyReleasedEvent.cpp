#include "Events/KeyEvents/KeyReleasedEvent.hpp"

namespace GilqEngine
{

KeyReleasedEvent::KeyReleasedEvent(int keycode)
    : IKeyEvent(keycode)
{
    TRACE();
}

}
