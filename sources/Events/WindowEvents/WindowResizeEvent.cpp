#include "Events/WindowEvents/WindowResizeEvent.hpp"

namespace GilqEngine
{

WindowResizeEvent::WindowResizeEvent(unsigned int width, unsigned int height)
    : width(width), height(height)
{
    TRACE();
}

}
