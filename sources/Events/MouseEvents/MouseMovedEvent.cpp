#include "Events/MouseEvents/MouseMovedEvent.hpp"

namespace GilqEngine
{

MouseMovedEvent::MouseMovedEvent(float x, float y)
    : posX(x), posY(y)
{
    TRACE();
}

}
