#include "Inputs/GLFWInput.hpp"

namespace NAMESPACE
{

GLFWInput *GLFWInput::thisInstance = nullptr;
std::mutex GLFWInput::thisInstanceMutex;
GLFWwindow *GLFWInput::currentWindow = nullptr;

GLFWInput::GLFWInput()
{
    
}

GLFWInput::~GLFWInput()
{
    delete thisInstance;
}

GLFWInput *GLFWInput::getInstance(GLFWwindow *window)
{
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
    return (glfwGetKey(currentWindow, keycode) == GLFW_PRESS);
}

bool GLFWInput::isMousePressed(int mousecode) const
{
    return (glfwGetMouseButton(currentWindow, mousecode) == GLFW_PRESS);
}

float GLFWInput::getMouseX() const
{
    double x, y;
    glfwGetCursorPos(currentWindow, &x, &y);
    return (x);
}

float GLFWInput::getMouseY() const
{
    double x, y;
    glfwGetCursorPos(currentWindow, &x, &y);
    return (y);
}

Vector<float, 2> GLFWInput::getMousePosition() const
{
    double x, y;
    glfwGetCursorPos(currentWindow, &x, &y);
    return (Vector<float, 2>((float)x, (float)y));
}

}
