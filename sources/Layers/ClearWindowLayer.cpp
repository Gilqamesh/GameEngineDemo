#include "Layers/ClearWindowLayer.hpp"
#include "Debug/Trace.hpp"

namespace NAMESPACE
{

ClearWindowLayer::ClearWindowLayer()
    : ILayer(LayerType::regular)
{
    TRACE();
}

void ClearWindowLayer::onAttach()
{
    TRACE();
    GLCall(glClearColor(0.2f, 0.3f, 0.3f, 1.0f));
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
