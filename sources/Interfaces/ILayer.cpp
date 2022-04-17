#include "Interfaces/ILayer.hpp"
#include "Debug/Trace.hpp"

namespace NAMESPACE
{

ILayer::ILayer(LayerType layerType)
    : layerType(layerType)
{
    TRACE();
}

}
