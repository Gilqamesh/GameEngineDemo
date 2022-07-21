#ifndef IINPUT_HPP
# define IINPUT_HPP

# include "pch.hpp"
# include "Math/Vector.hpp"

namespace GilqEngine
{

class IInput
{
public:
    virtual ~IInput() = default;
    virtual bool isKeyPressed(int keycode) const = 0;
    virtual bool isMousePressed(int mousecode) const = 0;
    virtual float getMouseX() const = 0;
    virtual float getMouseY() const = 0;
    virtual Vector<float, 2> getMousePosition() const = 0;
};

}

#endif
