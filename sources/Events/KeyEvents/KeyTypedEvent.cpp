#include "Events/KeyEvents/KeyTypedEvent.hpp"

namespace GilqEngine
{

KeyTypedEvent::KeyTypedEvent(int keycode)
    : IKeyEvent(keycode)
{
    TRACE();
}

}
