#include "Events/MouseEvents/MouseButtonPressedEvent.hpp"

namespace GilqEngine
{

MouseButtonPressedEvent::MouseButtonPressedEvent(int mouseCode)
    : IMouseButtonEvent(mouseCode)
{
    TRACE();
}

}
