#include "Layers/TriangleMeshesLayer.hpp"
#include "Factories/TriangleMeshFactory.hpp"
#include "Debug/Trace.hpp"

namespace NAMESPACE
{

TriangleMeshesLayer::TriangleMeshesLayer(MacApplication *macApplication)
    : ILayer(LayerType::regular), _macApplication(macApplication)
{
    TRACE();
    (void)_macApplication;
}

void TriangleMeshesLayer::onAttach()
{
    TRACE();
    TriangleMeshFactory triangleMeshFactory;
    triangleMeshes.push_back(triangleMeshFactory.createStaticMesh(identity_matrix<GLfloat, 4, 4>()));
}

void TriangleMeshesLayer::onDetach()
{
    TRACE();
}

void TriangleMeshesLayer::onEvent(IEvent &e)
{
    TRACE();
    (void)e;
}

void TriangleMeshesLayer::onUpdate(float deltaTime)
{
    TRACE();
    (void)deltaTime;
}

void TriangleMeshesLayer::onRender()
{
    TRACE();
}

}
