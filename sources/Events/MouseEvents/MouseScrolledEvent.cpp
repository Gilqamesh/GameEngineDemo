#include "Events/MouseEvents/MouseScrolledEvent.hpp"

namespace GilqEngine
{

MouseScrolledEvent::MouseScrolledEvent(float offsetX, float offsetY)
    : offsetX(offsetX), offsetY(offsetY)
{
    TRACE();
}

}
