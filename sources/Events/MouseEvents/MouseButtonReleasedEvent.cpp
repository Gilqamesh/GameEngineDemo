#include "Events/MouseEvents/MouseButtonReleasedEvent.hpp"

namespace GilqEngine
{

MouseButtonReleasedEvent::MouseButtonReleasedEvent(int mouseCode)
    : IMouseButtonEvent(mouseCode)
{
    TRACE();
}

}
