#include "ECS/Components/ColorComponent.hpp"

namespace GilqEngine
{

ColorComponent::ColorComponent(float r, float g, float b, float a)
    : _color(r, g, b, a)
{
    TRACE();
}

ColorComponent::ColorComponent(const Vector<float, 4> &color)
    : _color(color)
{
    TRACE();

}

ostream &operator<<(ostream &os, const ColorComponent &a)
{
    TRACE();
    os << a._color;
    return (os);
}

}
