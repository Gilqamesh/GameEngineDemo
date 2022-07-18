#include "Layers/ClearWindowLayer.hpp"
#include "Debug/Trace.hpp"

namespace NAMESPACE
{

ClearWindowLayer::ClearWindowLayer(Vector<float, 3> color)
    : ILayer("Clear Window Layer", LayerType::regular), _color(color)
{
    TRACE();
}

void ClearWindowLayer::onAttach()
{
    TRACE();
    GLCall(glClearColor(_color[0], _color[1], _color[2], 1.0f));
}

void ClearWindowLayer::onDetach()
{
    TRACE();
}

void ClearWindowLayer::onEvent(IEvent &e)
{
    TRACE();
    (void)e;
}

void ClearWindowLayer::onUpdate(float deltaTime)
{
    TRACE();
    (void)deltaTime;
}

void ClearWindowLayer::onRender()
{
    GLCall(glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT));
    TRACE();
}

}
