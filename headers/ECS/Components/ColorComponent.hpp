#ifndef COLORCOMPONENT_HPP
# define COLORCOMPONENT_HPP

# include "pch.hpp"

namespace GilqEngine
{

struct ColorComponent
{
    ColorComponent() = default;
    ColorComponent(float r, float g, float b, float a);
    ColorComponent(const Vector<float, 4>& color);

    Vector<float, 4> _color;
};

ostream &operator<<(ostream &os, const ColorComponent& a);

}

#endif
