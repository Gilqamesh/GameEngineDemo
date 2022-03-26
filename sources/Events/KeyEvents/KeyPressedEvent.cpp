#include "Events/KeyEvents/KeyPressedEvent.hpp"

namespace NAMESPACE
{

KeyPressedEvent::KeyPressedEvent(int keycode, unsigned int repeatCount)
    : IKeyEvent(keycode), repeatCount(repeatCount)
{
    
}

}
