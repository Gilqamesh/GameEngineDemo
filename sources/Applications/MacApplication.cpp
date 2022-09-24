#include "Applications/MacApplication.hpp"
#include "Interfaces/Events/IEvent.hpp"
#include "Interfaces/ILayer.hpp"
#include "Events/EventDispatcher.hpp"
#include "Inputs/GLFWInput.hpp"

namespace GilqEngine
{

MacApplication::MacApplication()
{
    TRACE();
    window = new MacWindow();
    window->setEventCallback([this](IEvent &e){ this->onEvent(e); });
    layerManager = new LayerStack();
    running = true;
    minimized = false;
}

MacApplication::~MacApplication()
{
    TRACE();
    delete window;
    delete layerManager;
}

void MacApplication::run()
{
    TRACE();
    float lastTime = (float)glfwGetTime();
    while (running)
    {
        float time = (float)glfwGetTime();
        float deltaTime = time - lastTime;
        lastTime = time;
        // LOG("FPS: " << 1 / deltaTime);

        if (minimized == false)
        {
            for (LayerStack::iterator it = layerManager->begin(); it != layerManager->end(); ++it)
            {
                (*it)->onUpdate(deltaTime);
                (*it)->onRender();
            }
        }
        window->onUpdate();
    }
}

void MacApplication::onEvent(IEvent &e)
{
    TRACE();
    EventDispatcher dispatcher(e);
    dispatcher.dispatch<WindowCloseEvent>([this](IEvent &e) -> bool {
        return (this->onWindowClose(dynamic_cast<WindowCloseEvent &>(e)));
    });
    dispatcher.dispatch<WindowResizeEvent>([this](IEvent &e) -> bool {
        return (this->onWindowResize(dynamic_cast<WindowResizeEvent &>(e)));
    });
    dispatcher.dispatch<KeyPressedEvent>([this](IEvent &e) -> bool {
        return (this->onKeyPress(dynamic_cast<KeyPressedEvent &>(e)));
    });
    for (LayerStack::reverse_iterator rit = layerManager->rbegin(); rit != layerManager->rend(); ++rit)
    {
        if (e.isHandled())
            break ;
        (*rit)->onEvent(e);
    }
}

void MacApplication::pushLayer(ILayer *layer)
{
    TRACE();
    layerManager->pushLayer(layer);
    layer->onAttach();
}

void MacApplication::popLayer(ILayer *layer)
{
    TRACE();
    layerManager->popLayer(layer);
    layer->onDetach();
}

bool MacApplication::onWindowClose(WindowCloseEvent &e)
{
    TRACE();
    (void)e;
    this->close();
    return (true);
}

bool MacApplication::onWindowResize(WindowResizeEvent &e)
{
    TRACE();
    if (e.getWidth() == 0 || e.getHeight() == 0)
    {
        this->minimized = true;
        return (false);
    }
    this->minimized = false;
    GLCall(glViewport(0, 0, e.getWidth(), e.getHeight()));
    return (false);
}

bool MacApplication::onKeyPress(KeyPressedEvent &e)
{
    TRACE();
    if (e.getKeycode() == GLFW_KEY_ESCAPE) {
        this->close();
        return (true);
    }
    return (false);
}

}
