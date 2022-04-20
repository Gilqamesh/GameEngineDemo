#include "Windows/MacWindow.hpp"
#include "Events/WindowEvents/WindowResizeEvent.hpp"
#include "Events/WindowEvents/WindowCloseEvent.hpp"
#include "Events/MouseEvents/MouseButtonPressedEvent.hpp"
#include "Events/MouseEvents/MouseButtonReleasedEvent.hpp"
#include "Events/MouseEvents/MouseMovedEvent.hpp"
#include "Events/MouseEvents/MouseScrolledEvent.hpp"
#include "Events/KeyEvents/KeyPressedEvent.hpp"
#include "Events/KeyEvents/KeyReleasedEvent.hpp"
#include "Events/KeyEvents/KeyTypedEvent.hpp"
#include "Events/ApplicationEvents/AppRenderEvent.hpp"
#include "Events/ApplicationEvents/AppTickEvent.hpp"
#include "Events/ApplicationEvents/AppUpdateEvent.hpp"

namespace NAMESPACE
{

MacWindow::MacWindow(const MacWindowProps &windowProps)
    : windowProps(windowProps)
{
    TRACE();
    glfwSetErrorCallback([](int errorCode, const char *message){
        LOG_E("Error code: " << errorCode << ", message: " << message);
    });
    if (!glfwInit())
    {
        glfwTerminate();
        TERMINATE("glfwInit() failed");
    }
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
	glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 2);
    glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);
	glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
    window = glfwCreateWindow(windowProps.width, windowProps.height, windowProps.title.c_str(), NULL, NULL);
    if (window == nullptr)
    {
        glfwTerminate();
        TERMINATE("glfwCreateWindow() failed");
    }
    glfwMakeContextCurrent(window);
    if (glewInit() != GLEW_OK)
    {
        glfwTerminate();
        TERMINATE("glewInit() failed");
    }
    glfwSetWindowUserPointer(window, &this->windowProps);
    setVSync(true);

    /*
     * Set Event Callbacks
     */
    glfwSetFramebufferSizeCallback(window, [](GLFWwindow *window, int width, int height){
        MacWindowProps *w = (MacWindowProps *)glfwGetWindowUserPointer(window);

        w->width = width;
        w->height = height;
        WindowResizeEvent e(width, height);
        w->eventCallback(e);
    });
    glfwSetWindowCloseCallback(window, [](GLFWwindow *window){
        MacWindowProps *w = (MacWindowProps *)glfwGetWindowUserPointer(window);

        WindowCloseEvent e;
        w->eventCallback(e);
    });
    glfwSetMouseButtonCallback(window, [](GLFWwindow *window, int button, int action, int modifiers){
        MacWindowProps *w = (MacWindowProps *)glfwGetWindowUserPointer(window);
        (void)modifiers;

        if (action == GLFW_PRESS)
        {
            MouseButtonPressedEvent e(button);
            w->eventCallback(e);
        }
        else if (action == GLFW_RELEASE)
        {
            MouseButtonReleasedEvent e(button);
            w->eventCallback(e);
        }
        else
            TERMINATE("Unsupported action for mouse button");
    });
    glfwSetCursorPosCallback(window, [](GLFWwindow *window, double x, double y){
        MacWindowProps *w = (MacWindowProps *)glfwGetWindowUserPointer(window);

        MouseMovedEvent e(x, y);
        w->eventCallback(e);
    });
    glfwSetScrollCallback(window, [](GLFWwindow *window, double offsetX, double offsetY){
        MacWindowProps *w = (MacWindowProps *)glfwGetWindowUserPointer(window);

        MouseScrolledEvent e(offsetX, offsetY);
        w->eventCallback(e);
    });
    glfwSetKeyCallback(window, [](GLFWwindow *window, int key, int scancode, int action, int mods){
        MacWindowProps *w = (MacWindowProps *)glfwGetWindowUserPointer(window);
        (void)scancode;
        (void)mods;

        if (action == GLFW_PRESS)
        {
            KeyPressedEvent e(key, 0);
            w->eventCallback(e);
        }
        else if (action == GLFW_REPEAT)
        {
            KeyPressedEvent e(key, 1);
            w->eventCallback(e);
        }
        else if (action == GLFW_RELEASE)
        {
            KeyReleasedEvent e(key);
            w->eventCallback(e);
        }
        else
            TERMINATE("Unsupported action for key button");
    });
    glfwSetCharCallback(window, [](GLFWwindow *window, unsigned int keycode){
        MacWindowProps *w = (MacWindowProps *)glfwGetWindowUserPointer(window);

        KeyTypedEvent e(keycode);
        w->eventCallback(e);
    });
}

void MacWindow::onUpdate()
{
    TRACE();
    glfwPollEvents();
    glfwSwapBuffers(window);
}

void MacWindow::setVSync(bool enabled)
{
    TRACE();
    glfwSwapInterval(enabled);
    windowProps.VSync = enabled;
}

}
