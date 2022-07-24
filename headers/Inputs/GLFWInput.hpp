#ifndef GLFWINPUT_HPP
# define GLFWINPUT_HPP

# include "Interfaces/IInput.hpp"
# include "Windows/MacWindow.hpp"

namespace GilqEngine
{

/*
* singleton class
* thread-safe
*/
class GLFWInput : public IInput
{
static GLFWInput *thisInstance;
static mutex thisInstanceMutex;
static GLFWwindow *currentWindow;
public:
    ~GLFWInput();
    static GLFWInput *getInstance(GLFWwindow *window); /* each window handles its own inputs */
    virtual bool isKeyPressed(int keycode) const override;
    virtual bool isMousePressed(int mousecode) const override;
    virtual float getMouseX() const override;
    virtual float getMouseY() const override;
    virtual Vector<float, 2> getMousePosition() const override;
private:
    GLFWInput();
};

}

#endif
