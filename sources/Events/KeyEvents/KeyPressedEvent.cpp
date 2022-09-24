#include "Events/KeyEvents/KeyPressedEvent.hpp"

namespace GilqEngine
{

KeyPressedEvent::KeyPressedEvent(int keycode, unsigned int repeatCount)
    : IKeyEvent(keycode), repeatCount(repeatCount)
{
    TRACE();
}

}
