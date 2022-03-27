#include "Layers/Test/First.hpp"
#include "Interfaces/Events/IEvent.hpp"

namespace NAMESPACE
{

First::First(MacApplication *macApplication)
    : ILayer(LayerType::regular), application(macApplication)
{

}

void First::onAttach()
{

}

void First::onDetach()
{

}

void First::onEvent(IEvent &e)
{

}

void First::onUpdate(float deltaTime)
{

}

void First::onRender()
{

}

}
