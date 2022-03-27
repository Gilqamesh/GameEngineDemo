#include "Applications/MacApplication.hpp"
#include "Interfaces/Events/IEvent.hpp"
#include "Interfaces/ILayer.hpp"
#include "Events/EventDispatcher.hpp"
#include "Events/WindowEvents/WindowCloseEvent.hpp"
#include "Events/WindowEvents/WindowResizeEvent.hpp"

namespace NAMESPACE
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

        if (minimized == false)
        {
            for (LayerStack::iterator it = layerManager->begin(); it != layerManager->end(); ++it)
                (*it)->onUpdate(deltaTime);
        }
        window->onUpdate();
    }
}

void MacApplication::onEvent(IEvent &e)
{
    TRACE();
    EventDispatcher dispatcher(e);
    dispatcher.dispatch<WindowCloseEvent>([this](IEvent &e) -> bool {
        (void)e;
        running = false;
        return (true);
    });
    dispatcher.dispatch<WindowResizeEvent>([this](IEvent &e) -> bool {
        WindowResizeEvent &we = dynamic_cast<WindowResizeEvent &>(e);
        if (we.getWidth() == 0 || we.getHeight() == 0)
        {
            this->minimized = true;
            return (false);
        }
        this->minimized = false;
        GLCall(glViewport(0, 0, we.getWidth(), we.getHeight()));
        return (false);
    });
    for (LayerStack::reverse_iterator rit = layerManager->rbegin(); rit != layerManager->rend(); ++rit)
    {
        if (e.handled)
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


}
