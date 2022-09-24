#include "Inputs/GLFWInput.hpp"
#include "Debug/Trace.hpp"

namespace GilqEngine
{

GLFWInput *GLFWInput::thisInstance = nullptr;
mutex GLFWInput::thisInstanceMutex;
GLFWwindow *GLFWInput::currentWindow = nullptr;

GLFWInput::GLFWInput()
{
    TRACE();   
}

GLFWInput::~GLFWInput()
{
    TRACE();
    delete thisInstance;
}

GLFWInput *GLFWInput::getInstance(GLFWwindow *window)
{
    TRACE();
    currentWindow = window;
    if (thisInstance == nullptr)
    {
        thisInstanceMutex.lock();
        thisInstance = new GLFWInput();
        thisInstanceMutex.unlock();
    }
    return (thisInstance);
}

bool GLFWInput::isKeyPressed(int keycode) const
{
    TRACE();
    return (glfwGetKey(currentWindow, keycode) == GLFW_PRESS);
}

bool GLFWInput::isMousePressed(int mousecode) const
{
    TRACE();
    return (glfwGetMouseButton(currentWindow, mousecode) == GLFW_PRESS);
}

float GLFWInput::getMouseX() const
{
    TRACE();
    double x, y;
    glfwGetCursorPos(currentWindow, &x, &y);
    return ((float)x);
}

float GLFWInput::getMouseY() const
{
    TRACE();
    double x, y;
    glfwGetCursorPos(currentWindow, &x, &y);
    return ((float)y);
}

Vector<float, 2> GLFWInput::getMousePosition() const
{
    TRACE();
    double x, y;
    glfwGetCursorPos(currentWindow, &x, &y);
    return (Vector<float, 2>((float)x, (float)y));
}

}
